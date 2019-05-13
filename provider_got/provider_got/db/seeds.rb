# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

Character.create(
  name: 'Arya Stark',
  age: 18,
  house: 'Stark',
  actor: 'Maisie Williams'
)

Character.create(
  name: 'Daenerys Targaryen',
  age: 23,
  house: 'Targaryen',
  actor: 'Emilia Clarke'
)

Character.create(
  name: 'Tyrion Lannister',
  age: 38,
  house: 'Lannister',
  actor: 'Peter Dinklage'
)
