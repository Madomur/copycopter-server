require 'rubygems'

ENV['RAILS_ENV'] = 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
Dir[Rails.root.join('spec/support/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :mocha
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.backtrace_exclusion_patterns << %r{gems/}

  config.order = :random
  config.expose_current_running_example_as :example

  config.infer_spec_type_from_file_location!
end
