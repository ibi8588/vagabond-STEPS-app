class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find_by_city(params[:id])
    @posts = Post.all
    @users = User.all
  end


end
