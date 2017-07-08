class PostsController < ApplicationController
  before_action :require_login, only: [:new, :edit, :destroy, :update, :create]
  before_action :require_this_is_me, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
    @users = User.all
  end

  def new
    @post = Post.new
    @cities = City.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      if @post.trip_pic == ""
        @post.trip_pic = "https://lonelyplanetimages.imgix.net/a/g/hi/t/9cf024dfd5c0bcb2b17f4785340145ea-san-francisco.jpg?sharp=10&vib=20&w=1200"
        @post.save
      end
      redirect_to posts_path
    else
      flash[:error] = @post.errors.full_messages.join(", ")
      redirect_to new_post_path
    end
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
    params.require(:post).permit(:title, :description, :trip_date, :trip_pic, :user_id, :author, :city_id)
  end

end
