require "bundler/setup"

require "astrocalc"
require "pry"

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Set test example
DATA = Astrocalc::Support::Joan.new


RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Astrocalc::Support
end
