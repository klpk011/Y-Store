require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module YStore
  class Application < Rails::Application
    #默认语系改为中文：
    config.i18n.default_locale = "zh-CN"
  end
end
