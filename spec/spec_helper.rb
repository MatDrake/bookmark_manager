ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app/bookmark_app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'
require './app/models/link.rb'
require 'database_cleaner'
require 'web_helper'

Capybara.app = Bookmark

RSpec.configure do |config|
  config.include Capybara::DSL
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

RSpec.configure do |config|
  config.before(:suite) do
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
end
