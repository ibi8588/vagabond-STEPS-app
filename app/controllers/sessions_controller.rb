class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "Welcome old freind. Youre logged in!"
      redirect_to @user
    else
      flash[:error] = "You done goofed!"
      redirect_to login_path
    end
  end

  def destroy
    logout
    flash[:notice] = "Successfully logged out. Bye!"
    redirect_to root_path
  end



  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
