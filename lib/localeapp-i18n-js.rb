require 'localeapp-i18n-js/engine'
module LocaleappI18nJs

  extend self

  def report_missing_translations?
    ['development'].concat(configured_environments).include?(::Rails.env)
  end

  protected

  def configured_environments
    cfg = ::Rails.application.config
    return [] unless cfg.respond_to?(:localeapp_i18n_js)
    envs = cfg.localeapp_i18n_js
    raise ArgumentError, "Rails.application.config.localeapp_18n_js must be an array. e.g. ['test', 'custom']. You specified: #{envs}" unless envs.is_a?(Array)
    envs
  end

end
