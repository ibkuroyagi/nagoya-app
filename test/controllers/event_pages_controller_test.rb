require 'test_helper'

class EventPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_pages_index_url
    assert_response :success
  end

  test "should get new" do
    get event_pages_new_url
    assert_response :success
  end

  test "should get edit" do
    get event_pages_edit_url
    assert_response :success
  end

  test "should get show" do
    get event_pages_show_url
    assert_response :success
  end

end
