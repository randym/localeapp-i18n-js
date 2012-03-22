require 'test_helper'
# The contorller should not even be defined unless we are in an environment that
# is configured to use this. (development by default, other environments specified with config.
  class LocaleappI18nJs::LocaleappI18nJsControllerTest < ActionController::TestCase
    test "update" do
      post :update, :locale =>"en", :key => "test"
      assert_response :success
    end

    test "show" do
      get :show
      assert_response :success
    end


  end
