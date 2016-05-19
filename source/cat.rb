#model for the cat class. It will have its attributes and abilities here

class Cat
	#read and modify lives and alive 
	attr_accessor :lives, :alive
	#read cat attributes to display information
	attr_reader :name, :color, :friendly, :image_url, :age

	def initialize(args = {})
		@name = args[:name]
		@age = args[:age]
		@color = args[:color]
		@friendly = args[:friendly]
		@image_url = args[:image_url]
		@lives = args[:lives] || 9
		@alive = args[:alive] || true
	end

	#method for cat meow
	def meow
		'meow meow'
	end


	private

	def is_dead
		if @lives <= 0 
			puts "Your cat is dead."
			return true
		else
			return false
		end
	end
end