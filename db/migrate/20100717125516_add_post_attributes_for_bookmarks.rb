class AddPostAttributesForBookmarks < ActiveRecord::Migration
  def self.up
    add_column :posts, :type, :string
    add_column :posts, :url, :string
    add_column :posts, :guid, :string
  end

  def self.down
    remove_column :posts, :type
    remove_column :posts, :url
    remove_column :posts, :guid
  end
end
