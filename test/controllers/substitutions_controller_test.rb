require 'test_helper'

class SubstitutionsControllerTest < ActionController::TestCase
  setup do
    @substitution = substitutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:substitutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create substitution" do
    assert_difference('Substitution.count') do
      post :create, substitution: { replace_what: @substitution.replace_what, replace_with: @substitution.replace_with, substitution_type_id: @substitution.substitution_type_id, user_id: @substitution.user_id }
    end

    assert_redirected_to substitution_path(assigns(:substitution))
  end

  test "should show substitution" do
    get :show, id: @substitution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @substitution
    assert_response :success
  end

  test "should update substitution" do
    patch :update, id: @substitution, substitution: { replace_what: @substitution.replace_what, replace_with: @substitution.replace_with, substitution_type_id: @substitution.substitution_type_id, user_id: @substitution.user_id }
    assert_redirected_to substitution_path(assigns(:substitution))
  end

  test "should destroy substitution" do
    assert_difference('Substitution.count', -1) do
      delete :destroy, id: @substitution
    end

    assert_redirected_to substitutions_path
  end
end
