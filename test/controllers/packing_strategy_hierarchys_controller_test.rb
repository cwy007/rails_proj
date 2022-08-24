require "test_helper"

class PackingStrategyHierarchysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get packing_strategy_hierarchys_index_url
    assert_response :success
  end
end
