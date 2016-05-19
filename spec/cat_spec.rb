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
	end
end