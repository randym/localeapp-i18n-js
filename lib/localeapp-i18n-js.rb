require 'localeapp-i18n-js/engine'
module LocaleappI18nJs

  extend self

  def report_missing_translations?
    ['development'].concat(configured_environments).include?(::Rails.env)
  end

  protected

  def configured_environments
    cfg = ::Rails.application.config
    if cfg.respond_to?(:localeapp_i18n_js) && cfg.localeapp_i18n_js.is_a?(Array)
      cfg.localeapp_i18n_js
    else
      []
    end
  end

end
