# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

cities = ["Paris","Strasbourg","Marseille","Nantes","Lyon","Grenoble","Bordeaux"]


#Filling up the cities table with all possible entires.
cities.each do |city|
	c = City.create(city_name: city)
end


20.times do
	DogSitter.create(dog_sitter_name: Faker::Name.first_name, citie_id: rand(0..6))
end

20.times do
	Dog.create(dog_name: Faker::Name.first_name, citie_id: rand(0..6))
end

50.times do
	Stroll.create(date: Faker::Date.forward(days: 100), dog_sitter_id: rand(1..20), dog_id: rand(1..20))
end