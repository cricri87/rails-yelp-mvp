# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
random_name = %w(chinese italian japanese french belgian)

10.times do
  restaurants_attributes = Restaurant.new(
    name:    Faker::Pokemon.name,
    address: Faker::Address.street_address,
    category:  random_name.sample
  )
 restaurants_attributes.save!
end


puts 'Finished!'

