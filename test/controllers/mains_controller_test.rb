require 'test_helper'

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get mains_question_url
    assert_response :success
  end

  test "should get maintenance" do
    get mains_maintenance_url
    assert_response :success
  end

  test "should get rank" do
    get mains_rank_url
    assert_response :success
  end

end
