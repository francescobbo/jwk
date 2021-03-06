require 'simplecov'
SimpleCov.start do
  add_filter 'spec/'
end

require 'bundler/setup'
require 'jwk'

Dir['spec/support/**/*.rb'].each { |f| require File.expand_path(f) }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.order = 'random'
end
