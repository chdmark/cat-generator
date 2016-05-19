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

	#method for cat being able to scratch
	def scratch
		'scratch scratch'
	end

	#method for cat being able to sleep
	def sleep
		'zzzz'
	end

	#method for cat being able to eat
	def eat(food)
		return if is_dead
		#dictionary for good food
		good_food  = {
			'cat food' => true,
			'live mouse' => true
		}
		#food is good if it is in the dictionary
		if good_food[food]
			 "Cat is eating #{food}. That's cool"
		else
			 puts "Cat is eating #{food}. That's bad"
			 lose_life #it will lose a life
		end
	end

	#method for cat losing a life
	def lose_life
		@lives -=1
		if @lives <= 0
			puts "your cat is dead"
			@alive = false
		else
			"Your cat has #{@lives} lives left"
		end
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