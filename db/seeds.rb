# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '999-888', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', phone_number: '999-777', category: 'italian' }
bonici = { name: 'Pizza Bonici', address: 'Balma 31130', phone_number: '999-666', category: 'italien' }
sushi_shop = { name: 'Sushi shop', address: 'Lyon 03', phone_number: '999-555', category: 'japanese' }
berliner = { name: 'Mont Berliner', address: 'Lyon 01', phone_number: '999-444', category: 'french' }

[dishoom, pizza_east, bonici, sushi_shop, berliner].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
