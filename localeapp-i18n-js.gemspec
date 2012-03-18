$:.push File.expand_path("../lib", __FILE__)
require "localeapp-i18n-js/version"

Gem::Specification.new do |s|
  s.name        = "localeapp-i18n-js"
  s.version     = LocaleappI18nJs::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Randy Morgan"]
  s.email       = ["digital.ipseity@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/localeapp-i18n-js"
  s.summary     = "It's a small library to integrate I18n-js with localeapp."
  s.description = s.summary
  s.files = `git ls-files`.split("\n")

  s.executables = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'

  s.add_dependency "i18n-js"
  s.add_dependency "localeapp"

  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "rake"
end
