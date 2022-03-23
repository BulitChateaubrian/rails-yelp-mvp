# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian" }
tamky =  { name: "tamky", address: "noailles", category: "chinese" }
petit_nice =  { name: "Le Petit nice", address: "Malmousque", category: "french" }
poulpe =  { name: "Le Poulpe a l'encre", address: "Montredon", category: "japanese" }
venice =  { name: "Venice Pizz", address: "vieux port", category: "italian" }

[ dishoom, tamky, petit_nice, poulpe, venice ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
