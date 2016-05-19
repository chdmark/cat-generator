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
		end
	end

end