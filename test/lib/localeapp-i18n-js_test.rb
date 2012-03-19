require "test_helper"

class LocaleappI18nJsTest < ActiveSupport::TestCase

  test "report_missing_translations?" do
    Rails.env = "development"
    assert_equal(LocaleappI18nJs.report_missing_translations?, true, "env:#{Rails.env} true in development")
  end

  test "disabled in test" do
    assert_equal(LocaleappI18nJs.report_missing_translations?, false, "env:#{Rails.env} False in test by default")
  end

  test "enabled if env is specified in application.config.localeapp_i18n_js" do
    Rails.application.config.localeapp_i18n_js = ["test"]
    assert_equal(LocaleappI18nJs.report_missing_translations?, true, "env:#{::Rails.env} True in test if sepcified")
  end

end
