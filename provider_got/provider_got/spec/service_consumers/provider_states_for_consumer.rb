require 'rails_helper'

# Pact.configure do |config|
#   config.include FactoryBot::Syntax::Methods
# end

Pact.provider_states_for 'Got Consumer' do
  provider_state 'existe una lista de personajes' do
    set_up do
      Personaje.create(nombre: 'Arya Stark', edad: 18, casa: 'Stark', actor: 'Maisie Williams')
      Personaje.create(nombre: 'Daenerys Targaryen', edad: 23, casa: 'Targaryen', actor: 'Emilia Clarke')
      Personaje.create(nombre: 'Tyrion Lannister', edad: 38, casa: 'Lannister', actor: 'Peter Dinklage')
    end
  end
end
