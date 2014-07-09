
#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name=first_name
    @last_name=last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee
  attr_accessor :title, :email
  
  def initialize(first_name, last_name, title, email)
    super(first_name, last_name)
    @title=title
    @email=email
  end

  def full_name
    "#{super} (#{@title})"
  end

  def contact
    @email
  end

end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
  attr_accessor :twitter_handle

  def initialize(first_name, last_name, twitter_handle)
    super(first_name, last_name)
    @twitter_handle=twitter_handle
  end

  def contact
    @twitter_handle
  end

end




# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers
