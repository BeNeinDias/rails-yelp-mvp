require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
# restaurants_attributes =
#  {
#     name: Faker::Name.first_name,
#     address: Faker::Address.street_address,
#     category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample,
#     phone_number: Faker::PhoneNumber.phone_number
#   }
# 5.times { Restaurant.create!(restaurants_attributes) }

restaurants_attributes =
  [{
    name: "Chiquinho",
    address: "Cais sodré",
    category: "italian",
    phone_number: "914079223"
  },
  {
  name: "Batata",
  address: "Batata Land",
  category: "chinese",
  phone_number: "234567098"
  },
  {
    name: "Badjoras",
    address: "ALmada",
    category: "japanese",
    phone_number: "522766899"
  },
  {
    name: "Bacalhoa",
    address: "Cona da mãe",
    category: "french",
    phone_number: "122233344"
  },
  {
    name: "Josefa Casaleira",
    address: "Cona da mae",
    category: "belgian",
    phone_number: "099877655"
  }
]
Restaurant.create!(restaurants_attributes)

puts 'Finished!'
