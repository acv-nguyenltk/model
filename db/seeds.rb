# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.destroy_all
Text.destroy_all
Image.destroy_all
tables = ['articles', 'texts', 'images']
start_id = 1

tables.each do |table|
  ActiveRecord::Base.connection.execute(
    "ALTER SEQUENCE #{table}_id_seq RESTART WITH #{start_id}"
  )
end
articleroot = Article.create!(title: 'Book124')

Text.create!(order: 1, article: articleroot, headline: 'AAA', sentences: 'Simple')
Text.create!(order: 2, article: articleroot, headline: 'AAAB', sentences: 'Simple1')

Image.create!(order: 1, article: articleroot, headline: 'AA', URL_image: 'hhtml')
Image.create!(order: 2, article: articleroot, headline: 'AAB', URL_image: 'hhtml1')
