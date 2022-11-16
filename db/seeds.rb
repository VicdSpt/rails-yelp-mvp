require 'faker'

SPECIES = ["chinese", "italian", "japanese", "french", "belgian"]
10.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.full_address
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.category = SPECIES.sample
  restaurant.save
end
