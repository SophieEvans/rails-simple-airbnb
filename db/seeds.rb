# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Flat.destroy_all

puts 'Creating 5 fake posts...'
5.times do
  flat = Flat.new(
    image_url: 'https://loremflickr.com/320/240/house',
    name: Faker::Coffee.blend_name,
    address: Faker::Address.street_address,
    description: Faker::Coffee.notes,
    price_per_night: rand(40..400),
    number_of_guests: rand(1..4)
  )
  flat.save!
end
puts 'Finished!'
