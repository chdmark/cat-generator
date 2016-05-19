require_relative 'cat'

#class for what will be displayed in the terminal 
class CatView
	
	#method to greet the user
	def self.welcome
		puts "Welcome to the Cat Generator"
		puts "Do you want to generate a cat?(yes or no)"
	end

	#method to display the attributes of the cat to user
	def self.display_attributes(cat)
		puts "Your cat's name is #{cat.name}"
		puts "-" * 50
		puts "Your cat's color is #{cat.color}"
		puts "-" * 50
		puts "Your cat's age is #{cat.age}"
		puts "-" * 50
		puts "Your cat's image url is #{cat.image_url}"
		puts "-" * 50
	
		if cat.friendly
			puts "Your cat is friendly"
			puts "-" * 50
		else
		 	puts "Your cat is unfriendly"
		 	puts "-" * 50
		end
	end

	#method to display possible actions of the cat
	def self.display_actions
		puts "Here is what your cat can do..."
		puts "-" * 50
		puts "Please choose a number"
		puts "-" * 50
		puts "1. Meow"
		puts "2. Eat"
		puts "3. Scratch"
		puts "4. Sleep"
		puts "5. Trick"
		puts "(Type 'quit' to quit.)"
	end

	#method for user to select various cat actions
	def self.cat_actions(cat)
		input = self.gather_response
		while input != "quit" 
			if input == "1"
				puts cat.meow
			elsif input =="2"
				puts "What would you like it to eat? Hint: It likes cat food and live mouse"
				input_food = self.gather_response
				puts cat.eat(input_food)
			elsif input =="3"
				puts cat.scratch
			elsif input =="4"
				puts cat.sleep
			elsif input =="5"
				puts "Would you like your cat to jump, roll, hide, duck, or attack?"
				input_trick = self.gather_response
				puts cat.perform_trick(input_trick)
			else
				puts "Input of '#{input}' is not recognized."
				puts "Please enter a number for one of the options above!"
			end
			self.display_actions
			input = self.gather_response
		end
	end

	#method to gather user response or input
	def self.gather_response
		gets.chomp.downcase
	end

end