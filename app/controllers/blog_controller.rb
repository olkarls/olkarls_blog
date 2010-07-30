class BlogController < ApplicationController
  def index
    @posts = Post.recent.type("Article").paginate(:page => params[:page], :per_page => 5)
  end
end