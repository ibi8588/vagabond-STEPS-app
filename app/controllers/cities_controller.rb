class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find_by_city(params[:id])
    @users = User.all
    @city_posts = @city.posts.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
  end


end
