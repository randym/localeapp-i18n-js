
<%# encoding: utf-8%>

I18n.report_missing_translations = <%= LocaleappI18nJs.report_missing_translations? %>
I18n.localeapp_i18n_js_path = "/localeapp_i18n_js"

// Instantiate the object
var I18n = I18n || {};


//Hijact the default missingTranslation method to post to our controller
I18n.missingTranslation = function() {
  var path = this.currentLocale(), count = arguments.length
  for (var i = 0; i < count; i++) {
    path += "." + arguments[i];
  }

  if(I18n.report_missing_translations) {
    this.post_to_localeapp(path);
  }

  return '[missing "' + path + '" translation]';

};

I18n.post_to_localeapp = function post_to_localeapp(path) {
  console.log(path)
    $.ajax({
      url: I18n.localeapp_i18n_js_path,
      type: 'POST',
      dataType: 'json',
      data: {path: path},
      error: function(data, status, response) {
	console.log(response)
      }
    });
}
