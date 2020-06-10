# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

test_user1 = User.create(
    email:"a@a.com", 
    password:"password", 
    name:"Test", 
    location:Faker::Hipster.paragraph(sentence_count: 1), 
    picture_url:Faker::Avatar.image)

test_user1.save()

test_park1 = Park.create(
    name:Faker::Hipster.sentence(word_count: 1),
    boro:Faker::Hipster.sentence(word_count: 1),
    address:Faker::Hipster.sentence(word_count: 1), 
    link:Faker::Hipster.sentence(word_count: 1), 
    average_rating:5,
    picture_url: 'https://source.unsplash.com/random/1920x1080/?nature,water,hike&sig=1')


test_park1.save()

test_post1 = Post.create(
    content: Faker::Hipster.paragraph(sentence_count: 2),
    masks: true,
    not_crowded: true,
    distancing: true,
    user_id: test_user1.id,
    park_id: test_park1.id)

test_post1.save()



