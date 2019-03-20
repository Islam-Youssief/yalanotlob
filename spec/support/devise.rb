#include Devise::TestHelpers
#require 'support/controller_helpers'
RSpec.configure do |config|
  # Setup TestHelper for Rails 5 
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Devise::Test::ControllerHelpers, type: :view
  config.include Devise::Test::IntegrationHelpers, type: :feature
end
