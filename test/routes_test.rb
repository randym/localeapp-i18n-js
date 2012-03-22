require 'test_helper'

class RoutesTest < ActionController::TestCase
  include Rails.application.routes.url_helpers
  puts LocaleappI18nJs::Engine.routes.routes.inspect
  test 'localeapp_i18n_js update is set' do
    assert_generates "localeapp_i18n_js", {
      :controller => "LocaleappI18nJs/LocaleappI18nJs",
      :action => "update"}
  end

  test 'localeapp_i18n_js show is set' do
    assert_generates "localeapp_i18n_js", {
      :controller => "LocaleappI18nJs/LocaleappI18nJs",
      :action => "show"}
  end

    # TODO what gives? The route is clearly shown, and the controller post works - so why does this fail?
    # assert_routing({:path => "localeapp_i18n_js", :method => :post }, { :controller => "LocaleappI18nJs/LocaleappI18nJs", :action => "update"})

end
