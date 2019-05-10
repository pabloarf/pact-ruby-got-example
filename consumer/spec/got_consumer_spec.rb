require 'faraday'
require 'pact/consumer/rspec'
require_relative 'pact_helper'

describe 'Got Consumer', pact: true do
  it 'devuelve personajes' do
    got_provider_service
        .upon_receiving('una solicitud para obtener personajes')
        .with(
          method: :get,
          path: '/personajes',
          headers: {'Accept' => 'application/json'}
        )
        .will_respond_with(
          status: 200,
          headers: { 'Content-Type' => 'application/json' },
          body: [
            {
              personaje: {
                nombre: Pact.like('Arya Stark'),
                edad: Pact.like(18),
                casa: Pact.like('Stark'),
                actor: Pact.like('Maisie Williams')
              }
            },
            {
              personaje: {
                nombre: Pact.like('Daenerys Targaryen'),
                edad: Pact.like(23),
                casa: Pact.like('Targaryen'),
                actor: Pact.like('Emilia Clarke')
              }
            },
            {
              personaje: {
                nombre: Pact.like('Tyrion Lannister'),
                edad: Pact.like(38),
                casa: Pact.like('Lannister'),
                actor: Pact.like('Peter Dinklage')
              }
            }
          ]
        )
    # Solicitud al endpoint de nuestro provider
    got_respuesta = Faraday.get(got_provider_service.mock_service_base_url + '/personajes', nil, {'Accept' => 'application/json'})

    # Chequeamos que la respuesta fue un 200
    # Aqui tambien se pueden chequear los atributos de la respuesta
    expect(got_respuesta.status).to eql 200
  end
end
