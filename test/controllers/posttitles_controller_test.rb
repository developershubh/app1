require 'test_helper'

class PosttitlesControllerTest < ActionController::TestCase
  setup do
    @posttitle = posttitles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posttitles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posttitle" do
    assert_difference('Posttitle.count') do
      post :create, posttitle: { text: @posttitle.text }
    end

    assert_redirected_to posttitle_path(assigns(:posttitle))
  end

  test "should show posttitle" do
    get :show, id: @posttitle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posttitle
    assert_response :success
  end

  test "should update posttitle" do
    patch :update, id: @posttitle, posttitle: { text: @posttitle.text }
    assert_redirected_to posttitle_path(assigns(:posttitle))
  end

  test "should destroy posttitle" do
    assert_difference('Posttitle.count', -1) do
      delete :destroy, id: @posttitle
    end

    assert_redirected_to posttitles_path
  end
end
