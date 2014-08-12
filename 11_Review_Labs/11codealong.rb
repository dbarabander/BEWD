class User < ActiveRecord::Base
	validates :username, :password, presence:true
	validates :username, :uniqueness: true

def self.create_with_password(username,password)
	has= password_hash(password)	
	User.create(username: username, password: hash)
end

def self.find_authenticated_user(username,password)
	User.where(username:username,password:password_hash(password)).first
end

private

	def self.password_hash(password)
		return Digest::SHA2.hexdigest(password)
	end

end

NOW MAKE THE CONTROLLER
"bundle excec rails generate controller sessions"

#ROUTES FILE

resources :stories
resources :sessions, only: [:new,:create]


#SESSIONS CONTROLLER
class Sessions Controller <ApplicationController
	def new 
	end

	def create
		@user = user.find_authenticated_user(params[:username],params[:password])
		if @user.present?
		flash[:notice] = "Welcome back #{@user.username}!"
		session[:user_id] = @user.id
		redirect_tos stories_path
		else
		flash[:error] = "Invalid username or password"
		redirect_to new_session_path	
	end

	def delete
		session[:user_id] = nil
	end
end

#new.html.erb
<h1>Login</h1>
<%= form_tag create_session_path do %>
	<%= text_field_tag :username, nil, placeholder: "Username"%>
	<%= text_field_tag :password, nil, placeholder: "Username"%>
<%end%>

#Application 
