# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.



# def get_input
# gets.chomp
# end

require 'pry'

@valarray = Array.new
@wordarray = Array.new
@upvotes = 0

def get_words()
	puts "Enter a word. If you're done entering words, put a '_' "
	word = gets.downcase.chomp
	
	if word != "_"
		@wordarray << word
 		puts "What else?"
 		get_words

 	else
 		get_values
 	end

end

def get_values()
	@wordarray.length.times {
	puts "Enter a value for your words, in order:"
	value = gets.to_i
	@valarray << value	
	}
	get_phrase
end

def calculate_upvotes(phrase)
	if @wordarray.any?{
		|w| phrase[w] } #not sure what exactly this means 
			@valarray.each { |val|
				@upvotes += val
			} 
	end
end

def get_phrase()
	puts "Enter a phrase:"
	phrase = gets.downcase.chomp
	calculate_upvotes(phrase)
	puts "New story added! #{phrase}, Current Upvotes: #{@upvotes}"
end	

get_words


# calculate_upvotes

# 	calculate_upvotes

# puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
# puts "Please enter a News story:"
# story = get_input
# puts "Please give it a category:"
# category = get_input
# upvotes = calculate_upvotes(story, category)
# puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"


	