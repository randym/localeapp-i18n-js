require "spec_helper"

describe Localeapp_::I18nJs do

  it "is enabled when rails env is delopment" do
    Rails.env = "deployment"
    Localeapp::I18n.report_missing_translations?.should == true
  end

end
