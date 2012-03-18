Rails.application.routes.draw do
  scope :module => 'LocaleappI18nJs' do
    post "localeapp_i18n_js", :to => 'LocaleappI18nJs#update'
  end
end
