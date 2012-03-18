module LocaleappI18nJs
  class LocaleappI18nJsController < ActionController::Base

    def update
      Rails.logger.info "[LocaleappI18nJs] update: locale=#{params[:locale]}, key=#{params[:key]}"
      add_missing_translation params[:locale], params[:key]
      render :json => true
    end

    protected

    def add_missing_translation(locale, key)
      Localeapp.missing_translations.add locale, key
      Localeapp.sender.post_missing_translations
    end

  end
end

