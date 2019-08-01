# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

Movie.destroy_all

	100.times do 

	species = ["action", "horreur", "commedie", "drame"]

	Movie.create(name: Faker::Movies::StarWars.character, year: Faker::Number.within(range: 1900..2000),
		genre: "#{species[rand(0..3)]}",  synopsis: Faker::Hipster.paragraph(sentence_count: rand(5..15), supplemental:true, random_sentences_to_add: rand(4..10)),
		director: Faker::Name.name_with_middle, allocin_rating: Faker::Number.within(range: 0.0..5).ceil(1),
		already_seen: false) 

	end