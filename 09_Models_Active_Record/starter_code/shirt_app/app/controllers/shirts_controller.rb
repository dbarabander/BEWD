class ShirtsController < ApplicationController
	
	def index
		@shirts = Shirt.all 
	end

	def show
		@shirts = Shirt.search_for(params[:q])
	end
end
