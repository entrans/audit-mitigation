require 'test_helper'

class MitigationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mitigations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mitigation" do
    assert_difference('Mitigation.count') do
      post :create, :mitigation => { }
    end

    assert_redirected_to mitigation_path(assigns(:mitigation))
  end

  test "should show mitigation" do
    get :show, :id => mitigations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => mitigations(:one).to_param
    assert_response :success
  end

  test "should update mitigation" do
    put :update, :id => mitigations(:one).to_param, :mitigation => { }
    assert_redirected_to mitigation_path(assigns(:mitigation))
  end

  test "should destroy mitigation" do
    assert_difference('Mitigation.count', -1) do
      delete :destroy, :id => mitigations(:one).to_param
    end

    assert_redirected_to mitigations_path
  end
end
