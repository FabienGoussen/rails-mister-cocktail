# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 10.times do
# cocktail = Cocktail.new({ name: Faker::Name.first_name})
# cocktail.save
# end

# i=1
# 10.times do
# dose = Dose.new({ description: Faker::Lorem, cocktail_id:i})
# dose.save
# i += 1
# end

Ingredient.create(name: "Citron")
Ingredient.create(name: "Glace")
Ingredient.create(name: "Fruit rouge")
Ingredient.create(name: "Houblon")
Ingredient.create(name: "Malt")
Ingredient.create(name: "Orge")
Ingredient.create(name: "Eau")
