require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Gnavirv
  class Application < Rails::Application
    config.load_defaults 6.0
    config.autoload_paths += %W[#{config.root}/app/services]
  end
end
