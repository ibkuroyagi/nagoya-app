require 'test_helper'

class UniversityPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get university_pages_index_url
    assert_response :success
  end

  test "should get new" do
    get university_pages_new_url
    assert_response :success
  end

end
