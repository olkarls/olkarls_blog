# coding: utf-8

namespace :feeds do
  desc "Update the mashup"
  task :update => :environment do
    Bookmark.update_from_feed
  end
end