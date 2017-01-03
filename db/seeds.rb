# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


for i in 0..15
  Business.new(name: Faker::Company.name, industry: 'Advertising & Marketing', started: Faker::Date.backward(50), price: Faker::Number.number(5), address: Faker::Address.street_address, tehsil: 'Tehsil', city: 'Lahore', state: 'Punjab', num_employees: Faker::Number.number(2)).save
end