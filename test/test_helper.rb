ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

module ActiveSupport
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  class TestCase
    fixtures :all
  end
  # Add more helper methods to be used by all tests here...
end
