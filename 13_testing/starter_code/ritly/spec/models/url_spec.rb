require 'rails_helper'

RSpec.describe Url, :type => :model do
  context "create a url active record" do
	
	before(:each) do
		Url.create_url('blablabla')
	end 

	it "look if url is created" do

	end


end

end
