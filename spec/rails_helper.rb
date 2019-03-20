# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'spec_helper'
require 'capybara/rspec'
require 'simplecov'
require 'factory_bot'
SimpleCov.start

RSpec.configure do |config|
  Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  # Setup capybara
  #config.include Warden::Test::Helpers #deplecated 
  config.include Capybara::DSL
  # config.after :each do
  # 	Warden.test_reset!
  # end
  # End Setup capybara
end
