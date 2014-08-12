class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_authenticated_user(params[:username], params[:password])
    if @user.present?
      flash[:notice] = "Welcome back #{@user.name}!"
      session[:user_id] = @user.id #this is what's storing it when they successfully logged in
      redirect_to stories_path
    else
      flash[:error] = "Invalid username or password."
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to stories_path
  end
end
