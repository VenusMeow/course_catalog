require 'test_helper'

class CoursePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get course_pages_home_url
    assert_response :success
  end

end
