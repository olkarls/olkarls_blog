require 'spec_helper'

describe Post do
  before(:each) do
    @post = Factory.build(:valid_post)
  end
  
  it "should be valid with valid attributes" do
    @post.should be_valid
  end
  
  it "should not be valid without a title" do
    @post.title = ""
    @post.should_not be_valid
  end
end