class Post < ActiveRecord::Base
  acts_as_taggable
  has_permalink
  
  validates_presence_of :title
  validates_presence_of :permalink
  
  
  default_scope includes(:tags)
  scope :published, lambda { where("published_at <= ? AND published != ?", Time.zone.now, 0) }
  scope :recent, published.order("published_at DESC")
  scope :type,   proc { |type| where(:type => type) }
end