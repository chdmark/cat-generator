require 'httparty'

#module to parse the data from cat api
module CatImageParser
	def self.get_image
		cat_api_data = HTTParty.get("http://thecatapi.com/api/images/get?format=xml")
		cat_api_data["response"]["data"]["images"]["image"]["url"] 
	end
end