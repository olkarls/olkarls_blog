Given /^I have a post$/ do
  @post = Post.new
end

Given /^my post has title "([^"]*)"$/ do |title|
  @post[:title] = title
  @post.save
end

Given /^my post has summary "([^"]*)"$/ do |summary|
  @post[:summary] = summary
  @post.save
end

Given /^my post has body "([^"]*)"$/ do |body|
  @post[:body] = body
  @post.save
end

Given /^my post was published at "([^"]*)"$/ do |published_at|
  @post[:published_at] = Date.parse(published_at)
  @post.save
end

Given /^I have posts with the following data:$/ do |table|
  table.hashes.each do |post|
    Post.create!(post)
  end
end

Then /^I should see the following on the page:$/ do |table|
  table.hashes.each do |post|
    Then %{I should see "#{post[:title]}"}
    Then %{I should see "#{post[:summary]}"}
    Then %{I should see "#{Date.parse(post[:published_at]).strftime("%Y-%m-%d")}"}
  end
end

Then /^I should not see:$/ do |table|
  table.hashes.each do |post|
    Then %{I should not see "#{post[:title]}"}
  end
end

Then /^I should see pagination$/ do
  page.should have_css("div.pagination")
end
