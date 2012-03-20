require 'test_helper'

class LocaleappI18nJs::LocaleappI18nJsControllerTest < ActionController::TestCase
  test "update" do
    post :update, :locale =>"en", :key => "test"
    assert_response :success
  end

  test "get is dead" do
    assert_raise(AbstractController::ActionNotFound) { get :index }
    assert_raise(AbstractController::ActionNotFound) { get :show }
  end

end
