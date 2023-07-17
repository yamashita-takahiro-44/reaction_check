require "test_helper"

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tests_new_url
    assert_response :success
  end
end
