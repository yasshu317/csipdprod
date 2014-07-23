require 'test_helper'

class RatingsControllerTest < ActionController::TestCase
  setup do
    @rating = ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rating" do
    assert_difference('Rating.count') do
      post :create, rating: { assertiveness: @rating.assertiveness, discipline: @rating.discipline, domain_knowledge: @rating.domain_knowledge, involvement_in_discussions: @rating.involvement_in_discussions, leadership: @rating.leadership, month: @rating.month, ownership: @rating.ownership, presentation: @rating.presentation, responsiveness: @rating.responsiveness, technical_knowledge: @rating.technical_knowledge, verbal: @rating.verbal, written: @rating.written, year: @rating.year }
    end

    assert_redirected_to rating_path(assigns(:rating))
  end

  test "should show rating" do
    get :show, id: @rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rating
    assert_response :success
  end

  test "should update rating" do
    patch :update, id: @rating, rating: { assertiveness: @rating.assertiveness, discipline: @rating.discipline, domain_knowledge: @rating.domain_knowledge, involvement_in_discussions: @rating.involvement_in_discussions, leadership: @rating.leadership, month: @rating.month, ownership: @rating.ownership, presentation: @rating.presentation, responsiveness: @rating.responsiveness, technical_knowledge: @rating.technical_knowledge, verbal: @rating.verbal, written: @rating.written, year: @rating.year }
    assert_redirected_to rating_path(assigns(:rating))
  end

  test "should destroy rating" do
    assert_difference('Rating.count', -1) do
      delete :destroy, id: @rating
    end

    assert_redirected_to ratings_path
  end
end
