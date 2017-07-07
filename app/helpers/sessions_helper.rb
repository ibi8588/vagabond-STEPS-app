module SessionsHelper
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged-in to access this section."
      redirect_to login_path
    end
  end
end
