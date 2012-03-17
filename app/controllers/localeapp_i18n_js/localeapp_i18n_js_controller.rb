module LocaleappI18nJs
  class LocaleappI18nJsController < ActionController::Base

    def show
      render :json => "missing translations should be POST. But at least you know it's working!"
    end

    def update
      add_missing_translations
    end
    protected


    def add_missing_translations
      puts params[:path]
      #this should hook localeapp functionality for adding missing translations
      render :json => true
    end

  end
end

