# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

200.times do |n|
  user = User.create!(
    name: Faker::Name.name(),
    email: "duong-#{n+1}@framgia.com"
  )
end
User.all.each do |user|
  user.addresses.create!(
    stress_name: Faker::Address.street_name(),
    home_number: Faker::Address.building_number()
  )
end
