# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Pet.delete_all
puts "Creating pets..."

10.times do
  Pet.create!(
    name: Faker::FunnyName.name,
    address: Faker::Address.street_address,
    species: Pet::SPECIES.sample,
    found_on: Date.new
  )
end

puts "Done!"
