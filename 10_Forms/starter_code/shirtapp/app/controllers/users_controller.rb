class UsersController < ApplicationController


def new
	@user = User.new
end

def show
  	@user = User.find(params[:id])
 end

def create
	@user = User.create(user_params)
	if @user.save
		redirect_to 'show'

	else
		render 'new'
	end



	# email = params[:user][:email]
	# username = params[:user][:username]
	# password = params[:user][:password]
	# password_confirmation = params[:user][:password_confirmation]

end

private
def user_params
  	params.require(:user).permit(:username, :email, :password, :password_confirmation) #this returns a limited hash!
end


end
