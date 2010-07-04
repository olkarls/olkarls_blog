Given /^I have a post$/ do
  @post = Post.new
end

Given /^my post has title "([^"]*)"$/ do |title|
  @post[:title] = title
  @post.save
end

Given /^my post has preamble "([^"]*)"$/ do |preamble|
  @post[:preamble] = preamble
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