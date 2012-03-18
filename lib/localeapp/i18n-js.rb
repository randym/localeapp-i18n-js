require 'i18n-js/engine.rb'
require 'i18n-js/version.rb'
module Localeapp
  module I18n
    def report_missing_translations?
      options = ['development']
      options.concat Rails.application.config.localeapp_i18n_js if Rails.application.config.respond_to?(localeapp_i18n_js)
      options.include?(Rails.env)
    end
  end
end
