class User < ActiveRecord::Base
	attr_accessor :password


	validates_confirmation_of :password
	validates_presence_of :password, :on => :create
	validates_presence_of :email
	validates_uniqueness_of :email

	def self.create_with_password(email,password)
		hash = password_hash(password)
		User.create(email: email, password: hash)
	end

	def self.find_authenticated_user(email,password)
		User.where(email: email, password: password_hash(password)).first)
	end

	private 
  	
  	def self.password_hash(password)
    return Digest::SHA2.hexdigest(password)
  end
end
