require 'test_helper'

class OffshoreManagerRatingsControllerTest < ActionController::TestCase
  setup do
    @offshore_manager_rating = offshore_manager_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offshore_manager_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offshore_manager_rating" do
    assert_difference('OffshoreManagerRating.count') do
      post :create, offshore_manager_rating: {  }
    end

    assert_redirected_to offshore_manager_rating_path(assigns(:offshore_manager_rating))
  end

  test "should show offshore_manager_rating" do
    get :show, id: @offshore_manager_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offshore_manager_rating
    assert_response :success
  end

  test "should update offshore_manager_rating" do
    patch :update, id: @offshore_manager_rating, offshore_manager_rating: {  }
    assert_redirected_to offshore_manager_rating_path(assigns(:offshore_manager_rating))
  end

  test "should destroy offshore_manager_rating" do
    assert_difference('OffshoreManagerRating.count', -1) do
      delete :destroy, id: @offshore_manager_rating
    end

    assert_redirected_to offshore_manager_ratings_path
  end
end
