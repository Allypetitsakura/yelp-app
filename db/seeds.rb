# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database ...'
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create(
    name: Faker::JapaneseMedia::Naruto.village,
    address: Faker::Movies::HarryPotter.location,
    phone_number: Faker::Number.number(digits: 10),
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Created restaurant ##{restaurant.id}"
end
