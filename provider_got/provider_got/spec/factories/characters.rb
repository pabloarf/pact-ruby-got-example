FactoryBot.define do
  factory :character do
    name Faker::TvShows::GameOfThrones.character
    age 15
    house Faker::TvShows::GameOfThrones.house
    actor 'Nombre actor'
  end
end