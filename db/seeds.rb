# Seed your restaurant database in db/seeds.rb with at least 5 valid restaurant records.
# Run rails db:seed to launch the seeding script.

puts "cleaning database"
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "creating restaurant #{restaurant.id}"
end

puts "completed"
