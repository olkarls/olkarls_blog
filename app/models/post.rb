class Post < ActiveRecord::Base
  attr_accessor :telephone
  validates_presence_of :title
end