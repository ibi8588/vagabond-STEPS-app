class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #flash notice
      login(@user)
      redirect_to user_path(@user)
    else
      #flash error
      redirect_to new_user_path
    end
  end

    def show
      @user = User.find_by_id(params[:id])
    end

    def edit
      @user = User.find_by_id(params[:id])
    end

    def update
      @user = User.find_by_id(params[:id])
      @user.update(user_params)
      #flash notice
      redirect_to user_path(@user)
    end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :profile_pic)
  end

end
