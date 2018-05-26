require 'test_helper'

class YelpitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get yelpits_index_url
    assert_response :success
  end

  test "should get show" do
    get yelpits_show_url
    assert_response :success
  end

  test "should get new" do
    get yelpits_new_url
    assert_response :success
  end

end
