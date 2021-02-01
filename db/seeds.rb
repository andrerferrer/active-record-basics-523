require 'faker'
# we write here the same that we would write in the `rake console`

# GOOD STYLE
puts "CLEAN THE DB"
Restaurant.destroy_all

# puts "Creating Restaurants"

# # Restaurant.create(name: "Little Yellow", address: "Rio", rating: 5)
# yellow = Restaurant.new(name: "Little Yellow", address: "Rio", rating: 5)
# yellow.save

# Restaurant.create(name: "Mc Donalds", address: "Everywhere", rating: 2)
# Restaurant.create(name: "Burger King", address: "Everywhere", rating: 2)

# puts "We are done. Enjoy"

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save
end
puts 'Finished!'
