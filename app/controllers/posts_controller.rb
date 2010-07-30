class PostsController < ApplicationController
  def index
    @posts = Post.recent.paginate(:page => params[:page], :per_page => 5)
  end
  
  def tagged
    @posts = Post.published.tagged_with(params[:tag]).includes(:tags).order("published_at").paginate(:page => params[:page], :per_page => 5)
  end
  
  def show
    @post = Post.find_by_permalink(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def edit
    @post = Post.find_by_permalink(params[:id])
  end
  
  def update
    @post = Post.find_by_permalink(params[:id])
    @post.update_attributes(params[:post])
    if @post.save
      flash[:success] = "Post was successfully updated!"
      redirect_to post_path(@post)
    else
      render :edit
    end
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