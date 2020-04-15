puts 'Deleting Restaurant Records'
Restaurant.destroy_all

puts 'Populating Restaurant with new Records'

10.times do
  restaurant = Restaurant.create(
    {
      name: Faker::Restaurant.name,
      address: Faker::Address.street_address,
      phone_number: Faker::PhoneNumber.phone_number,
      category: %w[chinese italian japanese french belgian].sample
    }
  )

  puts "Restaurant ID: #{restaurant.id} created"
end

puts 'Done'
