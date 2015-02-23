require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Boda
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*',
        :headers => :any,
        :methods => [:get, :put, :patch, :options],
        :max_age => 15
      end
    end
  end
end
