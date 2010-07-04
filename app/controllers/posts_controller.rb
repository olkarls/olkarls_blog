class PostsController < ApplicationController
  def index
    @posts = Post.find(:all, :order => :published_at)
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "Post was successfully created!"
      redirect_to post_path(@post)
    else
      render :new
    end
  end
end
