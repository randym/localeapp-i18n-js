require "spec_helper"
require "localeapp-i18n-js"
if File.basename(Rails.root) != "tmp"
  abort <<-TXT
\e[31;5m
WARNING: That will remove your project!
Please go to #{File.expand_path(File.dirname(__FILE__) + "/..")} and run `rake spec`\e[0m
TXT
end

describe LocaleappI18nJs do

  before do
    # Remove temporary directory if already present
    FileUtils.rm_r(Rails.root) if File.exist?(Rails.root)

    # Create temporary directory to test the files generation
    %w( config public/javascripts ).each do |path|
      FileUtils.mkdir_p Rails.root.join(path)
    end
  end

  after do
    # Remove temporary directory
    FileUtils.rm_r(Rails.root)
  end

  it "is enabled when rails env is delopment" do
    Rails.env = "deployment"
    LocaleappI18nJs.report_missing_translations?.should == true
  end
end
