# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
  Article.create({title: Faker::Lorem.sentence(word_count: 8),
                  description: Faker::Lorem.paragraph(sentence_count: 8),
                  article_url: Faker::Internet.url })
end
