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
Booking.destroy_all

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save


User.new(fullname: "Hermione Granger", email: "hermione@hogwarts.com", password: "azerty", age: 30).save
User.new(fullname: "Severus Rogue", email: "severus@hogwarts.com", password: "azerty", age: 66).save
User.new(fullname: "Dobby", email: "dobby@hogwarts.com", password: "azerty", age: 145).save
User.new(fullname: "Luna Lovegood", email: "luna@hogwarts.com", password: "azerty", age: 30).save

puts "╭∩╮(-_-)╭∩╮"

puts " ║▌║█║▌│║▌║▌█ ACTIVITY en cours de Création ║▌║█║▌│║▌║▌█ "
puts ""
puts "mange un cookie en attendant!"
puts "༼ つ ◕_◕ ༽つ🍪"
puts ""
puts "oh merde, plus de cookie! "
puts "▄█▀ █▬█ █ ▀█▀"
puts ""
puts ""
puts "╭∩╮(-_-)╭∩╮"
activity = Activity.new(user: User.all.sample, title: "Quidditch training", theme: "Sports", price: "12", date: Date.new(2023,6,3), summary: "Come play with Harry", description: "Golden snitch catch training with Harry")
file = URI.open("https://thumbs.gfycat.com/MerryExcellentHarrier-max-1mb.gif")
activity.photo.attach(io: file, filename: "quidditch.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Sortilège reviews", theme: "Charms", price: "10", date: Date.new(2023,6,12), summary: "Reviews with Hermionne", description: "I will help you for your exams")
file = URI.open("https://images.unsplash.com/photo-1610270066297-7b06341d2b8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2344&q=80")
activity.photo.attach(io: file, filename: "charms.png", content_type: "image/png")

activity.save!
activity = Activity.new(user: User.all.sample, title: "Darts with Voldemor", theme: "Sport", price: "500", date: Date.new(2023,9,19), summary: "Unique and captivating experience", description: "In this activity, participants have the opportunity to challenge the famous wizard, Lord Voldemort, in a game of darts. Players use magical darts to aim at different targets representing iconic scenes from the series. Each dart throw offers an immersive interaction with the magical world of Harry Potter. While competing against Voldemort, participants can enjoy a mystical and thrilling atmosphere. This activity combines skill, precision, and fun for an unforgettable experience for all Harry Potter fans.")
file = URI.open("https://i.gifer.com/SqCB.gif")
activity.photo.attach(io: file, filename: "voldemor.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Make potions", theme: "Alchemy", price: "20", date: Date.new(2023,6,20), summary: "Happy cours with Severus Snape", description: "Come in this funny activity with a funny teacher")
file = URI.open("https://media2.giphy.com/media/90CquRgNWDgUcUMlPc/giphy.gif?cid=ecf05e47t4vqv7w29u6f3o03cdt42aweisl1agqajyzst50f&ep=v1_gifs_search&rid=giphy.gif&ct=g")
activity.photo.attach(io: file, filename: "potion.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Care of magical creatures 🧙‍♂️", theme: "Nature", price: "3", date: Date.new(2023,7,4), summary: "New creature, new adventure", description: "Hagrid will present you a pretty giant Spider! Have fun!!")
file = URI.open("https://www.peuple-animal.com/data/document/1/30.800.jpg")
activity.photo.attach(io: file, filename: "creature.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Dance with Alb and Sev 🥳", theme: "Party", price: "1500", date: Date.new(2023,8,3), summary: "Let's dance with Albus and Severus! ", description: "Participants learn magical, graceful dance moves, guided by these famous wizards.")
file = URI.open("https://media4.giphy.com/media/1lI97corSEnZu/giphy.gif?cid=ecf05e47qqf8n4l58bm1et0x3iu1bnfitncb1q90twon8uap&ep=v1_gifs_related&rid=giphy.gif&ct=g")
activity.photo.attach(io: file, filename: "dumbledore.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Divination", theme: "Charms", price: "1", date: Date.new(2023,7,5), summary: "We'll see your future... in a bowling bowl !!", description: "Divination is in charms category because i don't really know what it is.")
file = URI.open("https://static.wikia.nocookie.net/harrypotter/images/1/19/Divination_par_boule_de_cristal.jpg/revision/latest?cb=20160606121342&path-prefix=fr")
activity.photo.attach(io: file, filename: "bowl.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Defence Against the Dark Arts", theme: "Charms", price: "50", date: Date.new(2023,7,5), summary: "Harry talk, you listen", description: "rf the title!!")
file = URI.open("https://images.unsplash.com/photo-1512618831669-521d4b375f5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80")
activity.photo.attach(io: file, filename: "monster.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Make butterbeer 🍻", theme: "Arts and crafts", price: "18", date: Date.new(2023,6,22), summary: "Learn to make butterbeer", description: "Hagrid will learn you this art, and he will test your creations... alone!")
file = URI.open("https://guiltyeats.com/files/2021/05/HP_EL_ButterBeer_5.12.21_23.jpg")
activity.photo.attach(io: file, filename: "beer.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Herbology", theme: "Nature", price: "33", date: Date.new(2023,8,12), summary: "Nevil share is passion", description: "Mandragores, carnivorous plants, only pleasure with a wonderful teacher")
file = URI.open("https://i.pinimg.com/564x/c5/30/25/c53025830c16257a0e45f1b0d003253b.jpg")
activity.photo.attach(io: file, filename: "plant.png", content_type: "image/png")
activity.save!

activity = Activity.new(user: User.all.sample, title: "Alchemy 🧌", theme: "Alchemy", price: "100", date: Date.new(2023,9,9), summary: "Come learn alchemy!!", description: "Philosophical Stone? only for looser. Here we learn how to make the Moon Stone")
file = URI.open("https://images.unsplash.com/photo-1560427450-00fa9481f01e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=393&q=80")
activity.photo.attach(io: file, filename: "stone.png", content_type: "image/png")
activity.save!

puts "╭∩╮(-_-)╭∩╮"


puts "╭∩╮(-_-)╭∩╮"


puts "╭∩╮(-_-)╭∩╮"

  5.times do
    Booking.create(user: User.all.sample, activity: Activity.all.sample)
  end

puts "MERCI D'AVOIR PATIENTÉ, TU PEUX MAINTENANT ALLER VOIR TON SITE MAGIQUE - BISOUS !"
