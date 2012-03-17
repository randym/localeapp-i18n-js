module LocaleappI18nJs

    extend self

    require "localeapp-i18n-js/engine"

    def report_missing_translations?
      options = ['development']
      options.concat Rails.application.config.localeapp_i18n_js if Rails.application.config.respond_to?(localeapp_i18n_js)
      options.include?(Rails.env)
    end

end
