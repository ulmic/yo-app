require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module YoApp
  class Application < Rails::Application
    config.autoload_paths += Dir[
      "#{config.root}/lib/**/"
    ]
    config.i18n.available_locales = [:ru]
    config.i18n.default_locale = :ru
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.paths << Rails.root.join('node_modules')
  end
end
