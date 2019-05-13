require 'rails_helper'

Pact.provider_states_for 'Got Consumer' do
  provider_state 'a list of characters exists' do
    set_up do
      Character.create(name: 'Arya Stark', age: 18, house: 'Stark', actor: 'Maisie Williams')
      # Character.create(name: 'Daenerys Targaryen', age: 23, house: 'Targaryen', actor: 'Emilia Clarke')
      # Character.create(name: 'Tyrion Lannister', age: 38, house: 'Lannister', actor: 'Peter Dinklage')
    end
  end
end
