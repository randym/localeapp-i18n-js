$:.push File.expand_path("../lib", __FILE__)
require 'localeapp-i18n-js/version'

Gem::Specification.new do |s|
  s.name        = "localeapp-i18n-js"
  s.version     = LocaleappI18nJs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Randy Morgan"]
  s.email       = ["digital.ipseity@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/localeapp-i18n-js"
  s.summary     = "It's a small Rails engine to integrate I18n-js with localeapp."
  s.description = s.summary
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "i18n-js"
  s.add_dependency "localeapp"

  # crazy dependencies but if its a rails engine - it needs to be spec'd in rails
  s.add_development_dependency 'rails', '~> 3.2.1'
  s.add_development_dependency "activesupport", ">= 3.0.0"
  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency "rake"
  s.add_development_dependency "pry"
  s.add_development_dependency 'sqlite3'
end
