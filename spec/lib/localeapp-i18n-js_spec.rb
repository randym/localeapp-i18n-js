require "spec_helper"

describe LocaleappI18nJs do

  it "is enabled when rails env is delopment" do
    Rails.env = "deployment"
    LocaleappI18nJs.report_missing_translations?.should == true
  end

end
