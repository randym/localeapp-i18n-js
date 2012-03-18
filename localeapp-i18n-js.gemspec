$:.push File.expand_path("../lib", __FILE__)
require "localeapp/i18n-js/version"

Gem::Specification.new do |s|
  s.name        = "localeapp-i18n-js"
  s.version     = LocaleappI18nJs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Randy Morgan"]
  s.email       = ["digital.ipseity@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/localeapp-i18n-js"
  s.summary     = "It's a small library to integrate I18n-js with localeapp."
  s.description = s.summary
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "i18n-js"
  s.add_dependency "localeapp"

  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "rake"
end
