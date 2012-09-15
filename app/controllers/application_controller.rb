class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :logged_in

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in
    unless current_user
      redirect_to "http://google.com"
    end
  end
  helper_method :current_user, :logged_in
end
