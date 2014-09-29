require 'test_helper'

class LegalsControllerTest < ActionController::TestCase
  setup do
    @legal = legals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal" do
    assert_difference('Legal.count') do
      post :create, legal: { address: @legal.address, latitude: @legal.latitude, longitude: @legal.longitude, site: @legal.site }
    end

    assert_redirected_to legal_path(assigns(:legal))
  end

  test "should show legal" do
    get :show, id: @legal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal
    assert_response :success
  end

  test "should update legal" do
    patch :update, id: @legal, legal: { address: @legal.address, latitude: @legal.latitude, longitude: @legal.longitude, site: @legal.site }
    assert_redirected_to legal_path(assigns(:legal))
  end

  test "should destroy legal" do
    assert_difference('Legal.count', -1) do
      delete :destroy, id: @legal
    end

    assert_redirected_to legals_path
  end
end
