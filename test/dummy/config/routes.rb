Rails.application.routes.draw do
  mount LocaleappI18nJs::Engine => "/fluffy"
end
