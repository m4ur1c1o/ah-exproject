require 'test_helper'

class HormoneLevelsControllerTest < ActionController::TestCase
  setup do
    @hormone_level = hormone_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hormone_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hormone_level" do
    assert_difference('HormoneLevel.count') do
      post :create, hormone_level: { level: @hormone_level.level, max: @hormone_level.max, min: @hormone_level.min }
    end

    assert_redirected_to hormone_level_path(assigns(:hormone_level))
  end

  test "should show hormone_level" do
    get :show, id: @hormone_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hormone_level
    assert_response :success
  end

  test "should update hormone_level" do
    patch :update, id: @hormone_level, hormone_level: { level: @hormone_level.level, max: @hormone_level.max, min: @hormone_level.min }
    assert_redirected_to hormone_level_path(assigns(:hormone_level))
  end

  test "should destroy hormone_level" do
    assert_difference('HormoneLevel.count', -1) do
      delete :destroy, id: @hormone_level
    end

    assert_redirected_to hormone_levels_path
  end
end
