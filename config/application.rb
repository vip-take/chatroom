require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Chatroom
  class Application < Rails::Application
    config.generators do |g|
      g.assets  false
      g.helper  false
      g.test_framework  nil
    end
  end
end
