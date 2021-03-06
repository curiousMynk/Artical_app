require 'test_helper'

class ArticalControllerTest < ActionController::TestCase
  setup do
    @artical = articals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artical" do
    assert_difference('Artical.count') do
      artical :create, artical: { body: @artical.body, title: @artical.title }
    end

    assert_redirected_to artical_path(assigns(:artical))
  end

  test "should show artical" do
    get :show, id: @artical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artical
    assert_response :success
  end

  test "should update artical" do
    patch :update, id: @artical, artical: { body: @artical.body, title: @artical.title }
    assert_redirected_to artical_path(assigns(:artical))
  end

  test "should destroy artical" do
    assert_difference('Artical.count', -1) do
      delete :destroy, id: @artical
    end

    assert_redirected_to articals_path
  end
end
