class Shirt < ActiveRecord::Base
	# Class methods returns instances of blueprint
	def self.search_for(query)
		Shirt.where('name LIKE :query OR description LIKE :query', query: "%#{query}%") #QUERY IS BEING REPLACED WITH WHAT OCCURS AFTER THE HASH!!!!
	end



end

#this is why it's query