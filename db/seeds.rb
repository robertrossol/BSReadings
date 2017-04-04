20.times do
  Entry.create(
    date: Faker::Date.backward(7),
    time: Faker::Time.backward(7),
    bs: Faker::Number.between(35, 400)
    )
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
