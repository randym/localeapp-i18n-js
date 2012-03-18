Rails.application.routes.draw do
  scope :module => 'Localeapp/I18nJs' do
    get  "localeapp_i18n_js", :to => 'LocaleappI18nJs#show'
    post  "localeapp_i18n_js", :to => 'LocaleappI18nJs#update'
  end
end
