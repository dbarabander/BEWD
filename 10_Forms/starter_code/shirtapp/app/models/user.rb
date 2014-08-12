class User < ActiveRecord::Base
	validates :email, :username, :password, presence: true
	validates_confirmation_of :password
	validates :email, :username, uniqueness: true

	has_secure_password
	
	# def self.createuser(params)
			

	# 		if password_hash(password) == password_hash(password_confirmation)
	# 			User.create(email: email, username: username, password: password_hash(password))
	# 		else
	# 			render new_user_path
	# 		end
	# end

	

	# private
	
	# def self.password_hash(password)
	# 	return Digest::SHA2.hexdigest(password)
	# end

end
