# Set up generator tests
require 'rails/all'
require 'rails/generators'
require 'rails/generators/test_case'

class TestApp < Rails::Application
  config.root = File.dirname(__FILE__)
end

Rails.application = TestApp

module Rails
  def self.root
    @root ||= File.expand_path("../../tmp/rails", __FILE__)
  end
end

Rails.application.config.root = Rails.root
