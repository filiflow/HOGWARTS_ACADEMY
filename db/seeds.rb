# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

Activity.destroy_all
User.destroy_all

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save


User.new(fullname: "Hermione Granger", email: "hermione@hogwarts.com", password: "azerty", age: 30).save
User.new(fullname: "Severus Rogue", email: "severus@hogwarts.com", password: "azerty", age: 66).save
User.new(fullname: "Dobby", email: "dobby@hogwarts.com", password: "azerty", age: 145).save
User.new(fullname: "Luna Lovegood", email: "luna@hogwarts.com", password: "azerty", age: 30).save

puts "create activities"

activity = Activity.new(user: User.all.sample, title: "Quidditch training", theme: "Sports", price: "12", date: Date.new(2023,6,3), summary: "Come play with Harry", description: "Golden snitch catch training with Harry")
file = URI.open("https://images.unsplash.com/photo-1607942917525-b5a1ae53d720?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=872&q=80")
activity.photo.attach(io: file, filename: "quidditch.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Sortilège reviews", theme: "Charms", price: "10", date: Date.new(2023,6,12), summary: "Reviews with Hermionne", description: "I will help you for your exams")
file = URI.open("https://images.unsplash.com/photo-1490332695540-5acc256ec383?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Make potions", theme: "Alchemy", price: "20", date: Date.new(2023,6,20), summary: "Happy cours with Severus Snape", description: "Come in this funny activity with a funny teacher")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Care of magical creatures", theme: "Nature", price: "3", date: Date.new(2023,7,4), summary: "New creature, new adventure", description: "Hagrid will present you a pretty giant Spider! Have fun!!")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Transplane", theme: "Transports", price: "44", date: Date.new(2023,8,3), summary: "Albus Dumbledore", description: "Come please, just for him !")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Divination", theme: "Charms", price: "1", date: Date.new(2023,7,5), summary: "It's not expensive", description: "Divination is in charms category because i don't really know what it is.")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Defence Against the Dark Arts", theme: "Charms", price: "50", date: Date.new(2023,7,5), summary: "Harry talk, you listen", description: "rf the title!!")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Make butterbeer", theme: "arts and crafts", price: "18", date: Date.new(2023,6,22), summary: "Learn to make butterbeer", description: "Hagrid will learn you this art, and he will test your creations... alone!")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Herbology", theme: "Nature", price: "33", date: Date.new(2023,8,12), summary: "Nevil share is passion", description: "Mandragores, carnivorous plants, only pleasure with a wonderful teacher")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Alchemy", theme: "Alchemy", price: "100", date: Date.new(2023,9,9), summary: "Come learn alchemy!!", description: "Philosophical Stone? only for looser. Here we learn how to make the Moon Stone")
file = URI.open("PHOTO_LINK")
activity.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
activity.save!

puts "over"
