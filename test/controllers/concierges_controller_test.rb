require "test_helper"

class ConciergesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get concierges_index_url
    assert_response :success
  end
end
