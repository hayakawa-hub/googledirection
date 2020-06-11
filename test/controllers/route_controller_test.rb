require 'test_helper'

class RouteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get route_index_url
    assert_response :success
  end

end
