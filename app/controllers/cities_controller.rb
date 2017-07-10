class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find_by_city(params[:id])
    @posts = Post.all
    @users = User.all
  end

<<<<<<< HEAD
  def new
    @city = City.new
  end

  def create
    city = City.new(city_params)
    city.save
  end

 private
  def city_params
    params.require(:city).permit(:city, :state, :country, :photo)
  end
=======
>>>>>>> master

end
