# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

 puts "create 50 users"

50.times do
  user = User.new(
    fullname: Faker::Movies::HarryPotter.character,
    email:    Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    age:      rand(11..236)
  )
  user.save
end

puts "over"

puts "create activities"
  Activity.new(user_id: 40, title: "Quidditch training", theme: "Sports", price: "12", date: Date.new(2023,6,3), summary: "Come play with Harry", description: "Golden snitch catch training with Harry").save
  Activity.new(user_id: 41, title: "Sortilège reviews", theme: "Charms", price: "10", date: Date.new(2023,6,12), summary: "Reviews with Hermionne", description: "I will help you for your exams").save
  Activity.new(user_id: 42, title: "Make potions", theme: "Alchemy", price: "20", date: Date.new(2023,6,20), summary: "Happy cours with Severus Snape", description: "Come in this funny activity with a funny teacher").save
  Activity.new(user_id: 43, title: "Care of magical creatures", theme: "Nature", price: "3", date: Date.new(2023,7,4), summary: "New creature, new adventure", description: "Hagrid will present you a pretty giant Spider! Have fun!!").save
  Activity.new(user_id: 44, title: "Transplane", theme: "Transports", price: "44", date: Date.new(2023,8,3), summary: "Albus Dumbledore", description: "Come please, just for him !").save
  Activity.new(user_id: 45, title: "Divination", theme: "Charms", price: "1", date: Date.new(2023,7,5), summary: "It's not expensive", description: "Divination is in charms category because i don't really know what it is.").save
  Activity.new(user_id: 46, title: "Defence Against the Dark Arts", theme: "Charms", price: "50", date: Date.new(2023,7,5), summary: "Harry talk, you listen", description: "rf the title!!").save
  Activity.new(user_id: 47, title: "Make butterbeer", theme: "arts and crafts", price: "18", date: Date.new(2023,6,22), summary: "Learn to make butterbeer", description: "Hagrid will learn you this art, and he will test your creations... alone!").save
  Activity.new(user_id: 48, title: "Herbology", theme: "Nature", price: "33", date: Date.new(2023,8,12), summary: "Nevil share is passion", description: "Mandragores, carnivorous plants, only pleasure with a wonderful teacher").save
  Activity.new(user_id: 49, title: "Alchemy", theme: "Alchemy", price: "100", date: Date.new(2023,9,9), summary: "Come learn alchemy!!", description: "Philosophical Stone? only for looser. Here we learn how to make the Moon Stone").save

puts "over"
