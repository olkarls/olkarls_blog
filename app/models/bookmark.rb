class Bookmark < Post
  
  XML_FIELDS =  %w[title description link pubDate guid]
  POST_FIELDS = %w[title summary url published_at guid]
  
  def self.update_from_feed
    require 'open-uri'
    feed_url = "http://feeds.delicious.com/v2/rss/olkarls?count=9999"
    feed = Nokogiri::XML(open(feed_url))
    add_entries((feed.xpath('//item')))
  end
  
  def self.add_entries(entries)
    Post.delete_all
    entries.each do |entry|
      post = entry_to_post(entry)
      unless exists? :guid => post.guid
        post.save
      end
    end
  end
  
  def self.entry_to_post(entry)
    post = Post.new
    XML_FIELDS.each_with_index do |field, index|
      post[POST_FIELDS[index]] =  entry.xpath("#{field}").inner_text
    end
    
    entry.xpath("category").each do |tag|
      post.tag_list << tag.inner_text
    end
    post.type = "Bookmark"
    post
  end
end