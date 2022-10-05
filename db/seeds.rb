# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "12345678", category: %w(chinese italian japanese french belgian).sample }
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "87654321", category: %w(chinese italian japanese french belgian).sample }
pizza_west =  {name: "Pizza West", address: "Westland", phone_number: "8432176", category: %w(chinese italian japanese french belgian).sample }
burger_king = {name: "Burger King", address: "Baga", phone_number: "9087654", category: %w(chinese italian japanese french belgian).sample }
burger_queen = {name: "Burger Queen", address: "Tel", phone_number: "5087654", category: %w(chinese italian japanese french belgian).sample }

[dishoom, pizza_east, pizza_west, burger_king, burger_queen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
