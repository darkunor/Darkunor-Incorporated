class ApplicationController < ActionController::Base
  protect_from_forgery
helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    current_user = current_user || User.new
    if current_user.can? :edit
      
    else
      redirect_to root_path
    end
  end

end
