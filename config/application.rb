require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BatchSample
  class Application < Rails::Application

    # 中略

    # ================ ここから追加する ================
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    # ================ ここまで追加する ================
  end
end
