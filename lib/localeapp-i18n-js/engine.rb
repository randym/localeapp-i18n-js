module LocaleappI18nJs
  class Engine < ::Rails::Engine
     initializer 'localeapp_i18n_js.setup', :after => "i18n-js.asset_dependencies"  do |app|
      raise "Localeapp does not exist" unless defined?(Localeapp)
      raise "SimplesIdeias::I18n does not exist" unless defined?(SimplesIdeias::I18n)
     end
  end
end
