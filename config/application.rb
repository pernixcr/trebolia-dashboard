require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module TreboliaDashboard
  class Application < Rails::Application
    config.i18n.default_locale = :es

    config.encoding = "utf-8"

    config.filter_parameters += [:password]

    config.active_support.escape_html_entities_in_json = true

    config.active_record.whitelist_attributes = true

    config.assets.enabled = true

    config.assets.version = '1.0'

    if Rails.env.production?
      host = "trebolia.herokuapp.com"
    else
      host = "0.0.0.0"
    end

    config.action_mailer.default_url_options = { :host => host }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address => "smtp.gmail.com",
      :port => 587, 
      :user_name => "email@pernix-solutions.com",
      :password => "Pernix123.",
      :authentication => "plain",
      :enable_starttls_auto => true }
  end
end
