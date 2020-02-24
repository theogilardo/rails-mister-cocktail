# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Cocktail.destroy_all


puts 'Creating cocktails and ingredient...'

Ingredient.create(name: "Lemon")
Ingredient.create(name: "Ice")
Ingredient.create(name: "Chocolate")
Ingredient.create(name: "Mint leaves")
Ingredient.create(name: "Campari")
Ingredient.create(name: "Vodka")

cocktails_attributes = [
  {
    name:         'Mojito',
  },
  {
    name:         'Negroni',
  },

  {
    name:         'Manhattan',
  },

  {
    name:         'Capirinha',
  },

  {
    name:         'Moscow Mule',
  }
]
Cocktail.create!(cocktails_attributes)
puts "Finished! You have #{Cocktail.count} Cocktails"
