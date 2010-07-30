module PostPresenters
  class ShowPresenter
    def initialize(view, post)
      @view = view
      @post = post
    end
    
    def url
      @view.link_to @post.url, @post.url unless @post.url.blank?
    end
    
    def tag_list
      unless @post.tag_list.empty?
        @view.content_tag(:ul) do
          @post.tag_list.each do |tag|
            @view.content_tag(:li, tag)
          end
        end
      end
    end
  end
end