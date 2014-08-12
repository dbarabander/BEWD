class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates :password, length: {minimum: 6}
	before_save {self.email = email.downcase}
	has_secure_password

  def self.find_authenticated_user(username, password)
    User.where(name:username).first
  end
end
