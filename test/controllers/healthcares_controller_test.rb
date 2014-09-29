require 'test_helper'

class HealthcaresControllerTest < ActionController::TestCase
  setup do
    @healthcare = healthcares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:healthcares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create healthcare" do
    assert_difference('Healthcare.count') do
      post :create, healthcare: { address: @healthcare.address, latitude: @healthcare.latitude, longitude: @healthcare.longitude, site: @healthcare.site }
    end

    assert_redirected_to healthcare_path(assigns(:healthcare))
  end

  test "should show healthcare" do
    get :show, id: @healthcare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @healthcare
    assert_response :success
  end

  test "should update healthcare" do
    patch :update, id: @healthcare, healthcare: { address: @healthcare.address, latitude: @healthcare.latitude, longitude: @healthcare.longitude, site: @healthcare.site }
    assert_redirected_to healthcare_path(assigns(:healthcare))
  end

  test "should destroy healthcare" do
    assert_difference('Healthcare.count', -1) do
      delete :destroy, id: @healthcare
    end

    assert_redirected_to healthcares_path
  end
end
