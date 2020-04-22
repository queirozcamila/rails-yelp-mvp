# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St", category: "belgian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St", category: "italian" }
japa_go =  { name: "Japa Go", address: "Djalma Ulrich 69 ", category: "japanese" }
pettit_poa = { name: "Pettit Poa", address: "Algum lugar em paris", category: "french" }
chinatown = { name: "China Town", address: "Chinguiling", category: "chinese"}
pizza_west = { name: "Pizza West", address: "roma com amor", category: "italian"}

[dishoom, pizza_east, japa_go, pettit_poa, chinatown, pizza_west].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
