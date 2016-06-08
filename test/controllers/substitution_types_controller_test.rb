require 'test_helper'

class SubstitutionTypesControllerTest < ActionController::TestCase
  setup do
    @substitution_type = substitution_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:substitution_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create substitution_type" do
    assert_difference('SubstitutionType.count') do
      post :create, substitution_type: { name: @substitution_type.name }
    end

    assert_redirected_to substitution_type_path(assigns(:substitution_type))
  end

  test "should show substitution_type" do
    get :show, id: @substitution_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @substitution_type
    assert_response :success
  end

  test "should update substitution_type" do
    patch :update, id: @substitution_type, substitution_type: { name: @substitution_type.name }
    assert_redirected_to substitution_type_path(assigns(:substitution_type))
  end

  test "should destroy substitution_type" do
    assert_difference('SubstitutionType.count', -1) do
      delete :destroy, id: @substitution_type
    end

    assert_redirected_to substitution_types_path
  end
end
