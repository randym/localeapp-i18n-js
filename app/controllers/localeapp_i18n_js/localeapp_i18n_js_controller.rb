module LocaleappI18nJs
  class LocaleappI18nJsController < ActionController::Base

    def show
      render "localeapp_i18n_js/show"
    end

    def update
      if LocaleappI18nJs.localeapp_initialized?
        Localeapp.log "[LocaleappI18nJs] update: locale=#{params[:locale]}, key=#{params[:key]}"
        add_missing_translation params[:locale], params[:key]
        render :json => true
      else
        render :json => false
      end
    end

    protected

    def add_missing_translation(locale, key)
      Localeapp.missing_translations.add locale, key
      Localeapp.sender.post_missing_translations
    end

  end
end


