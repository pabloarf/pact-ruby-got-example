ENV['RAILS_ENV'] ||= 'test'

# [...]
RSpec.configuration do |config|
  # [...]
  # set up factory bot
  config.include FactoryBot::Syntax::Methods

  config.before(:suite) do
    DatabaseRewinder.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseRewinder.start
  end

  config.after(:each) do
    DatabaseRewinder.clean
  end
  # [...]
end