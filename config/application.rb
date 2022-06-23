# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  class Application < Rails::Application
    config.load_defaults 6.1
    config.time_zone = 'Asia/Tokyo'
    # デフォルトのロケールを日本（ja）に設定
    config.i18n.default_locale = :ja
  end
end
