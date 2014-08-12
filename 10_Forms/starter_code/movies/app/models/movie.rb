class Movie < ActiveRecord::Base
	validates :title, :description, presence: true #must have a name and description at all times
	validates :description, length:{minimum: 10}
	validates :name, uniqueness: true
	def self.search_for(query)
		Movie.where('title LIKE :query OR description LIKE :query', query: "%#{query}%") #QUERY IS BEING REPLACED WITH WHAT OCCURS AFTER THE HASH!!!!
	end

end

