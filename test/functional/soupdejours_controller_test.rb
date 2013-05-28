require 'test_helper'

class SoupdejoursControllerTest < ActionController::TestCase
  setup do
    @soupdejour = soupdejours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soupdejours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soupdejour" do
    assert_difference('Soupdejour.count') do
      post :create, soupdejour: { sdate: @soupdejour.sdate, sname: @soupdejour.sname }
    end

    assert_redirected_to soupdejour_path(assigns(:soupdejour))
  end

  test "should show soupdejour" do
    get :show, id: @soupdejour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soupdejour
    assert_response :success
  end

  test "should update soupdejour" do
    put :update, id: @soupdejour, soupdejour: { sdate: @soupdejour.sdate, sname: @soupdejour.sname }
    assert_redirected_to soupdejour_path(assigns(:soupdejour))
  end

  test "should destroy soupdejour" do
    assert_difference('Soupdejour.count', -1) do
      delete :destroy, id: @soupdejour
    end

    assert_redirected_to soupdejours_path
  end
end
