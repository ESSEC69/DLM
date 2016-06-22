class PostsController < ApplicationController

  before_action :set_post, only: [ :show ]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show


  end

  def edit
  end

  def public
  end

  def publish
  end

  def unpublish
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :description, :bootsy_image_gallery_id)
  end

  def set_post
    @post = Post.find(params[:id])
    if @post.id.to_i-1 == 0
      @previous_post = Post.last
    else
      @previous_post = Post.find(@post.id.to_i - 1)
    end

    if @post.id.to_i == Post.all.length
      @next_post = Post.first
    else
      @next_post = Post.find(@post.id.to_i + 1)
    end
  end



end
