# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'ffaker'

# 10.times do
#   first_name = FFaker::Name.first_name
#   last_name = FFaker::Name.last_name
#   email = "#{first_name}.#{last_name}@gmail.com"
#   Speaker.create(first_name:first_name, last_name: last_name, email:email)
# end

Meeting.create ({title:"Third meeting", agenda:"Discuss everything on the agenda", time: "4:00 pm"})
Meeting.create ({title:"Fourth meeting", agenda:"Discuss everything on the agenda", time: "4:15 pm"})