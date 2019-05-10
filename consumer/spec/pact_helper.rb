require 'pact/consumer/rspec'

Pact.configuration.pact_dir = File.dirname(__FILE__) + '/pacts'

Pact.service_consumer 'Got Consumer' do
  has_pact_with 'Got Provider' do
    mock_service :got_provider_service do
      pact_specification_version '2'
      port 4638
    end
  end
end
