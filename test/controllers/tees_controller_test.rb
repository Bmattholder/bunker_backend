require "test_helper"

class TeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tee = tees(:one)
  end

  test "should get index" do
    get tees_url, as: :json
    assert_response :success
  end

  test "should create tee" do
    assert_difference('Tee.count') do
      post tees_url, params: { tee: { name: @tee.name, yardage: @tee.yardage } }, as: :json
    end

    assert_response 201
  end

  test "should show tee" do
    get tee_url(@tee), as: :json
    assert_response :success
  end

  test "should update tee" do
    patch tee_url(@tee), params: { tee: { name: @tee.name, yardage: @tee.yardage } }, as: :json
    assert_response 200
  end

  test "should destroy tee" do
    assert_difference('Tee.count', -1) do
      delete tee_url(@tee), as: :json
    end

    assert_response 204
  end
end
