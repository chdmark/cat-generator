require_relative 'cat'

#class for what will be displayed in the terminal 
class CatView
	
	#method to greet the user
	def self.welcome
		puts "Welcome to the Cat generator"
		puts "Do you want to generate a cat?(yes or no)"
	end

	#method to display the attributes of the cat to user
	def self.display_attributes(cat)
		puts "Your cat's name is #{cat.name}"
		puts "Your cat's color is #{cat.color}"
		puts "Your cat's age is #{cat.age}"
		puts "Your cat's image is #{cat.image_url}"
	
		 if cat.friendly
		 	puts "Your cat is friendly"
		 else
		 	puts "Your cat is unfriendly"
		 end
	end


end