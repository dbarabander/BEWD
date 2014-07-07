class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

  def initialize(name, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = 0
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def is_occupied?
    @renters.any?
  end

  def to_s
    "#{@name} has #{@sqft} sqft and #{@renters.count} renters."
  end
end

my_apartment = Apartment.new("Viaud Brooklyn Residential", 800, 1, 1)
#Ask students how they would add renters to my_apartment.
#my_apartment.renters = ['Peter', 'Andre']
#OR: my_apartment.renters << 'Gracie'

if my_apartment.is_occupied?
  puts "This apartment is not for rent"
else
  puts my_apartment
  puts "This apartment is for rent, ask your broker for more details"
end
