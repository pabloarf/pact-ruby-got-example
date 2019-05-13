FactoryBot.define do
  factory :personaje do
    nombre Faker::TvShows::GameOfThrones.character
    edad 15
    casa Faker::TvShows::GameOfThrones.house
    actor 'Nombre actor'
  end
end