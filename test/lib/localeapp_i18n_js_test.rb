require 'test_helper'

class LocaleappI18nJsTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, LocaleappI18nJs
  end

  test "should not run in test environment by default" do
    assert_equal(LocaleappI18nJs.report_missing_translations?, false)
  end

  test "should report in development" do
    Rails.env = 'development'
    assert_equal(LocaleappI18nJs.report_missing_translations?, true)
  end

  test "should report in configured environments" do
    Rails.application.config.localeapp_i18n_js = ['test']
    assert_equal(LocaleappI18nJs.report_missing_translations?, true)
  end

  test "should raise an error if application configurate is not an array" do
    Rails.application.config.localeapp_i18n_js = 'test'
    assert_raise(ArgumentError) { LocaleappI18nJs.report_missing_translations? }
  end

end
