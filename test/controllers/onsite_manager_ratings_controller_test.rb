require 'test_helper'

class OnsiteManagerRatingsControllerTest < ActionController::TestCase
  setup do
    @onsite_manager_rating = onsite_manager_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onsite_manager_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onsite_manager_rating" do
    assert_difference('OnsiteManagerRating.count') do
      post :create, onsite_manager_rating: {  }
    end

    assert_redirected_to onsite_manager_rating_path(assigns(:onsite_manager_rating))
  end

  test "should show onsite_manager_rating" do
    get :show, id: @onsite_manager_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onsite_manager_rating
    assert_response :success
  end

  test "should update onsite_manager_rating" do
    patch :update, id: @onsite_manager_rating, onsite_manager_rating: {  }
    assert_redirected_to onsite_manager_rating_path(assigns(:onsite_manager_rating))
  end

  test "should destroy onsite_manager_rating" do
    assert_difference('OnsiteManagerRating.count', -1) do
      delete :destroy, id: @onsite_manager_rating
    end

    assert_redirected_to onsite_manager_ratings_path
  end
end
