# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

collections = []

5.times do 
    collections << Collection.create(name: Faker::Coffee.blend_name, size: 10)
end

collections.each_with_index { |collection, index| 
    5.times do
        book = Book.new(title: Faker::Book.title, publish_date: Faker::Date.backward(10000))    
        book.save
        book.authors.create(name: Faker::Name.first_name, surname: Faker::Name.last_name)
        book.placements.create(collection_id: index + 1)
    end
    bookstore = Bookstore.create(name: Faker::Creature::Animal.name.capitalize, collection_id: collection.id,
                latitude: Faker::Address.latitude, longitude: Faker::Address.longitude)
    bookstore.save
}
