class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.string :permalink
      t.text :summary
      t.text :body
      t.boolean :published, :default => false
      t.datetime :published_at
      t.timestamps
    end
    add_index :posts, :permalink
  end

  def self.down
    drop_table :posts
  end
end
