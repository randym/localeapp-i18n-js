require 'localeapp-i18n-js/engine'
module LocaleappI18nJs
  extend self
  def localeapp_initialized?
    defined?(Localeapp) && Localeapp.configuration.respond_to?(:sending_disabled?)
  end
end
