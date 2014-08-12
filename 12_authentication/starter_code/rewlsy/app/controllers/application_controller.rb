class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    if session[:user_id].present? #if they were logged in they would have the value stored in sessinos
      User.find(session[:user_id]) #This is where they interact, sesisons and our database
    else
      nil
    end
  end

  def logged_in?
    current_user.present?
  end

  def authenticate_user!
    if !logged_in?
      flash[:error] = "Sorry you must be logged in to do this..."
      redirect_to new_session_path
    end
  end


end
  