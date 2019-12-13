# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding data"
# if Photo.count > 0
# puts "WARNING: there is existing data."
# puts "To re-seed, first go to rails console and type 'Photo.delete_all'"
# puts "For heroku, type 'heroku run rails console'"
# exit
# end
# Photo.create!(url: "https://pbs.twimg.com/media/Clusm_JWYAEj2H-.jpg", username: "Michael Jackson", caption:"Looking good")
# Photo.create!(url: "http://i.imgur.com/vrU6Kmu.jpg", username: "gamer", likes_count:"100", caption:"like")
# Photo.create!(url: "http://i.imgur.com/vrU6Kmu.jpg", username: "gamer", likes_count:"100", caption:"like")
# puts "Seeded #{Photo.count} photos."

10.times do
    username = Faker::Name.name
    caption = Faker::Quote.famous_last_words 
    # url = Faker::LoremPixel.image("500x500", false, 'sports', nil, username)
    url  = Faker::LoremPixel.image(size: "500x600", is_gray: false, category: 'sports', number: nil, text: 'Dummy-text')
    like = Faker::Number.number(digits: 4)
    Photo.create!(url: url, username: username, caption: caption, likes_count: like)
end
