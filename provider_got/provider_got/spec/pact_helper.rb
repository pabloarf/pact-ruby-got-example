require 'pact/provider/rspec'
require 'service_consumers/provider_states_for_consumer'

Pact.configuration.reports_dir = './provider/reports'

Pact.service_provider 'Got Provider' do
  # app_version '1.2.3'
  # publish_verification_results !!ENV['PUBLISH_VERIFICATIONS_RESULTS']

  honours_pact_with 'Got Consumer' do
    pact_uri '../../consumer/spec/pacts/got_consumer-got_provider.json'
  end
end

Pact.set_up do
  DatabaseRewinder.start
end

Pact.tear_down do
  DatabaseRewinder.clean
end
