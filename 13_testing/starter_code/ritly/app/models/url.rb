class Url < ActiveRecord::Base

def self.create_url (params_secure)
	
    @url= Url.new params_secure
    @url.hash_code = rand(1..1000000)
    @url.save
    return @url
end 

end
