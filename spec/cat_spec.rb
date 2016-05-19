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
	end
end