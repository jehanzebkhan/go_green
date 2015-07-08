ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require File.dirname(__FILE__) + "/factories"
require 'rspec/rails'
require 'rspec/autorun'
require 'green_onion'
require 'capybara/rspec'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = true

  config.infer_base_class_for_anonymous_controllers = false

  config.order = "random"
  
  Capybara.javascript_driver = :webkit

end

GreenOnion.configure do |c|
  c.skins_dir = "#{::Rails.root}/lib/images"
  c.dimensions = { 
    :width => 1920, 
    :height => 1080 
  }
  c.threshold = 100

end
