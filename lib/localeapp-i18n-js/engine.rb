module LocaleappI18nJs
  class Engine < ::Rails::Engine
     initializer 'localeapp_i18n_js.setup', :after => "i18n-js.asset_dependencies"  do |app|
      Rails.logger.warn "Localeapp does not exist or is not configured" unless LocaleappI18nJs.localeapp_initialized?
      Rails.logger.warn "SimplesIdeias::I18n does not exist" unless defined?(SimplesIdeias::I18n)
     end
  end
end
