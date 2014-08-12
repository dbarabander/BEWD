# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'json'
require 'rest-client'
require 'pry'

@stories = []
@anotherstory = 'y'

def main
	mash_json = JSON.load(RestClient.get("http://mashable.com/stories.json"))
	# mash_json.class
	mash_json["new"].each do |story|
		title = story["title"]
		channel = story["channel"]

		upvotes = calculate_upvotes(title, channel)
		arraything(story, channel, upvotes)
	end 
end

def arraything(title, channel, upvotes)
			storyhash = { storytitle: title, storycategory: channel, storyupvotes: upvotes }
			@stories << storyhash
			puts @stories
			binding.pry
end

def calculate_upvotes(title, channel)
  upvotes = 1
	if channel.include?('cats')

    return upvotes * 5

  elsif channel.include?('bacon')

    return upvotes * 8

  elsif channel.include?("food") 

  else 

    return upvotes

  end

end

main()









