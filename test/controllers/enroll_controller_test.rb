require 'test_helper'

class EnrollControllerTest < ActionDispatch::IntegrationTest
  test "should get enroll" do
    get enroll_enroll_url
    assert_response :success
  end

  test "should get result" do
    get enroll_result_url
    assert_response :success
  end

end
