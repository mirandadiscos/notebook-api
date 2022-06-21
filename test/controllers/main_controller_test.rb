require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    visit main_index_url
    assert_response :success
  end
end
