# require 'faraday'
require 'pact/consumer/rspec'
require_relative 'pact_helper'
require_relative '../iron_throne.rb'

describe 'Got Consumer', pact: true do
  before do
    # Interaction
    got_provider_service
        .given('a list of characters exists') # Provider state
        .upon_receiving('a request to get the characters') # Expected request
        .with(
            method: :get,
            path: '/characters',
            headers: {'Accept' => 'application/json'}
        )
        .will_respond_with( # Minimal expected response
            status: 200,
            headers: { 'Content-Type' => Pact.term(generate: 'application/json', matcher: %r{^application\/json(;\s*charset=[\w-]+)?$}) },
            body: {
                characters: Pact.each_like(name: Pact.like('Arya Stark'), age: Pact.like(18), house: Pact.like('Stark'), actor: Pact.like('Maisie Williams'))
            }
        )
  end

  it 'returns a list of characters' do
    # Request to the provider's endpoint
    got_response = IronThrone.get_characters
    # Checking the status code of the response
    # Here we can also check the attributes of the response
    expect(got_response.status).to eql 200
  end
end
