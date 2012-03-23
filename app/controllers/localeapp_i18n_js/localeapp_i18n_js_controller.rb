if LocaleappI18nJs.localeapp_initialized?
  module LocaleappI18nJs
    class LocaleappI18nJsController < ActionController::Base

      def show
        render "localeapp_i18n_js/show", :layout => "application"
      end

      def update
        Localeapp.log "[LocaleappI18nJs] update: locale=#{params[:locale]}, key=#{params[:key]}"
        add_missing_translation params[:locale], params[:key] unless Localeapp.configuration.sending_disabled?
        render :json => true
      end

      protected

      def add_missing_translation(locale, key)
        Localeapp.missing_translations.add locale, key
        Localeapp.sender.post_missing_translations
      end

    end
  end
end


