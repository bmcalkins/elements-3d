# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Element.destroy_all

require 'rest-client'
require 'json'


base_url = "https://neelpatel05.pythonanywhere.com/"
data = RestClient.get(base_url)
parsed_data = JSON.parse(data)




parsed_data.map do |element|
   Element.create(name: element["name"], atomic_mass: element["atomicMass"], symbol: element["symbol"]) 
end


