class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @post = Post.all
  end
end
