# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

Personaje.create(
  nombre: 'Arya Stark',
  edad: 18,
  casa: 'Stark',
  actor: 'Maisie Williams'
)

Personaje.create(
  nombre: 'Daenerys Targaryen',
  edad: 23,
  casa: 'Targaryen',
  actor: 'Emilia Clarke'
)

Personaje.create(
  nombre: 'Tyrion Lannister',
  edad: 38,
  casa: 'Lannister',
  actor: 'Peter Dinklage'
)
