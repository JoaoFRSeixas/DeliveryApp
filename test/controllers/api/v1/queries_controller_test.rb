require "test_helper"

class Api::V1::QueriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_queries_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_queries_create_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_queries_show_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_queries_destroy_url
    assert_response :success
  end
end
