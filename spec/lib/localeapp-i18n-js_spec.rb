require "spec_helper"

describe Localeapp::I18n do

  it "is enabled when rails env is delopment" do
    Rails.env = "deployment"
    Localeapp::I18n.report_missing_translations?.should == true
  end

end
