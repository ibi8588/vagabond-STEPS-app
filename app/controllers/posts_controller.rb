class PostsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :destroy, :update, :create]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
      redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete

    redirect_to posts_path

  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :trip_date, :trip_pic, :user_id, :city_id, :author)
  end

end
