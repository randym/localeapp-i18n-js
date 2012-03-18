module LocaleappI18nJs

  class Engine < ::Rails::Engine
  end

  extend self
  def report_missing_translations?
    ['development'].concat(configured_environments).include?(::Rails.env)
  end

  def configured_environments
    return [] unless ::Rails.application.config.respond_to?(:localeapp_i18n_js)
    ::Rails.application.config.localeapp_i18n_js
  end

end
