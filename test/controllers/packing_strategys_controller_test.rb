require "test_helper"

class PackingStrategysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get packing_strategys_index_url
    assert_response :success
  end
end
