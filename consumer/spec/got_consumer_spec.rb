require 'faraday'
require 'pact/consumer/rspec'
require_relative 'pact_helper'

describe 'Got Consumer', pact: true do
  before do
    # Interaccion
    got_provider_service
        .given('existe una lista de personajes') # Precondicion
        .upon_receiving('una solicitud para obtener personajes') # Solicitud requerida
        .with(
            method: :get,
            path: '/personajes',
            headers: {'Accept' => 'application/json'}
        )
        .will_respond_with( # Respuesta esperada
            status: 200,
            headers: { 'Content-Type' => Pact.term(generate: 'application/json', matcher: %r{^application\/json(;\s*charset=[\w-]+)?$}) },
            body: {
                personajes: Pact.each_like(nombre: Pact.like('Arya Stark'), edad: Pact.like(18), casa: Pact.like('Stark'), actor: Pact.like('Maisie Williams'))
            }
        )
  end

  it 'devuelve personajes' do
    # Solicitud al endpoint de nuestro provider
    got_respuesta = Faraday.get(got_provider_service.mock_service_base_url + '/personajes', nil, {'Accept' => 'application/json'})

    # Chequeamos que la respuesta fue un 200
    # Aqui tambien se pueden chequear los atributos de la respuesta
    expect(got_respuesta.status).to eql 200
  end
end
