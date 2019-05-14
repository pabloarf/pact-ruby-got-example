require 'faraday'
require 'pact/consumer/rspec'
require_relative 'spec/pact_helper.rb'

class IronThrone
  def self.get_characters
    Faraday.get('http://localhost:4638' + '/characters', nil, {'Accept' => 'application/json'})
  end
end