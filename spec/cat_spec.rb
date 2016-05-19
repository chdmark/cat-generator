require_relative '../source/cat'
require_relative '../source/cat_api_image_parser'

describe Cat do 

	@cat_image = CatImageParser.get_image
	let(:cat){ Cat.new(name: "Chris", color: "blue", age: 15, friendly: false, image_url: @cat_image)}
	let(:dead_cat){ Cat.new(name: 'dead cat', color: 'black', age: 20, friendly: true, image_url: @cat_image, lives: 1)}

	describe "attributes" do 
		it 'has a name' do 
			expect(cat.name).to eq 'Chris'
		end
		it 'has a color' do 
			expect(cat.color).to eq 'blue'
		end
		it 'has an age' do 
			expect(cat.age).to eq 15
		end
		it 'has a boolean field friendly' do 
			expect(!!cat.friendly).to eq cat.friendly
		end
		it 'has an image_url' do 
			expect(cat.image_url).to eq @cat_image
		end

		it 'should default to nine lives' do 
			expect(cat.lives).to eq 9
		end
		it 'should be alive' do 
			expect(cat.alive).to be true
		end
	end

	describe 'basic actions' do 
		it 'should be able to meow' do 
			expect(cat.meow).to eq 'meow meow'
		end
		it 'should be able to scratch things' do
			expect(cat.scratch).to eq "scratch scratch"
		end
		it 'should be able to sleep' do 
			expect(cat.sleep).to eq "zzzz"
		end
	end

	describe 'advanced actions: eating' do 
		it 'can eat something good' do 
			expect(cat.eat('cat food')).to eq "Cat is eating cat food. That's cool"
		end
		it 'can eat something bad' do 
			expect{cat.eat('dead rat')}.to output("Cat is eating dead rat. That's bad\n").to_stdout
		end
		it 'loses a life if it eats something bad' do 
			expect{cat.eat('dead rat')}.to change{cat.lives}.by(-1)
		end
	end

	describe 'advanced actions: tricks' do 
		it 'can perform a trick successfully' do 
			expect(cat.perform_trick("jump")).to eq "Cat successfully performed jump. Awesome!"
		end
	end
end