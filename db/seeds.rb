# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

array = ["Fire", "Water", "Grass", "Bug", "Poison", "Steel", "Rock", "Fairy", "Ground", "Ice", "Dark", "Ghost", "Psychic", "Flying", "Fighting", "Normal", "Eletric"]
array.each do |type|
  t = Type.new
  t.name = type
  t.save
end
