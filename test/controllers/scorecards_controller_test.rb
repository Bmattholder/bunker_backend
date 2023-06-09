require "test_helper"

class ScorecardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scorecard = scorecards(:one)
  end

  test "should get index" do
    get scorecards_url, as: :json
    assert_response :success
  end

  test "should create scorecard" do
    assert_difference('Scorecard.count') do
      post scorecards_url, params: { scorecard: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show scorecard" do
    get scorecard_url(@scorecard), as: :json
    assert_response :success
  end

  test "should update scorecard" do
    patch scorecard_url(@scorecard), params: { scorecard: {  } }, as: :json
    assert_response 200
  end

  test "should destroy scorecard" do
    assert_difference('Scorecard.count', -1) do
      delete scorecard_url(@scorecard), as: :json
    end

    assert_response 204
  end
end
