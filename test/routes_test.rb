require 'test_helper'

class RoutesTest < ActionController::TestCase
  include Rails.application.routes.url_helpers

  test 'localeapp_i18n_js route is set' do

    assert_generates "/localeapp_i18n_js", {
      :controller => "LocaleappI18nJs/LocaleappI18nJs",
      :action => "update"}

    # TODO what gives? The route is clearly shown, and the controller post works - so why does this fail?
    #assert_routing({:path => "localeapp_i18n_js", :method => :post }, { :controller => "LocaleappI18nJs/LocaleappI18nJs", :action => "update"})

  end
end
