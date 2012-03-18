Localeapp I18n-js: Iintegrating javascript based front end localizations to the localeapp service.
====================================
[![Build Status](https://secure.travis-ci.org/randym/localeapp-i18n-js.png)](http://travis-ci.org/randym/localeapp-i18n-js/)

**IRC**:          [irc.freenode.net / #axlsx](irc://irc.freenode.net/axlsx)

**Git**:          [http://github.com/randym/localeapp-i18n-js](http://github.com/randym/localeapp-i18n-js)

**Twitter**:      [https://twitter.com/#!/morgan_randy](https://twitter.com/#!/morgan_randy) release announcements and news will be published here

**Author**:       Randy Morgan

**Copyright**:    2012

**License**:      MIT License

**Latest Version**: 0.0.1a

**Ruby Version**: 1.9.2, 1.9.3

**Rails Version**: > 3.1

**Release Date**: TBD

Synopsis
--------
Localeapp is a great service for simplifying the localization process for your standard rails app using i18n. It will pick up any missing keys in your local locale files and publish that information so that localizers can easily and rapidly complete localization. However, more and more applications are moving toward emberjs styles of managing the client interface and rely on tools like i18n-js to feed rails localizations to the front end. This gem glues those two things together by posting missing translations found in i18n-js to your localeapp project.


Installation
------------
Add the following to your Gemfile

  gem "localeapp-i18n-js",  :git => 'git://github.com/randym/localeapp-i18n-js.git'

Configuration
-------------

Assuming you have properly configured i18n-js and localeapp, you do not need to configure anything. When Rails is running in development mode all missing translations found by i18n-js will be passed on to the localeapp handlers that normally only pick up on I18n missing translations.

You do, however, need to add this to the end of your application.js

    #/app/assets/javascripts/application.js
    //= require localeapp-i18n-js

