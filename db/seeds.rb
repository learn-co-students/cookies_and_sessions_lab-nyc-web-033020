# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

Product.create(name: 'Walnuts')
Product.create(name: 'Avocado')
Product.create(name: 'Tomatos')
Product.create(name: 'Paprika')
Product.create(name: 'Garlic')
Product.create(name: 'Lox')
Product.create(name: 'Milk')
Product.create(name: 'Pickles')
Product.create(name: 'Butter')
