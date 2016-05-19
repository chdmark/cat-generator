require_relative 'cat'
require_relative 'cat_view'
require_relative 'cat_api_image_parser'
require 'faker' #faker gem to randomize names

#Cat controller to help control the flow of the generator 
class CatController

	def self.run

		CatView.welcome #welcome the user
		input = CatView.gather_response #gather user response

		while input == "yes"
			#create a new cat
			@random_cat = Cat.new(name: Faker::Name.name, color: Faker::Color.color_name, friendly: [true, false].sample, image_url: get_image, age: rand(1..15)) 
			#display cat attributes to user
			CatView.display_attributes(@random_cat)
			
			#display actions and gather user input
			self.actions

			#if user quits, show welcome screen message again
			CatView.welcome

			#gather user input
			input = CatView.gather_response
		end
	end

	#method to display the actions and gather user input for desired cat action
	def self.actions
		CatView.display_actions
		CatView.cat_actions(@random_cat)
	end

	def self.get_image
		CatImageParser.get_image
	end

end