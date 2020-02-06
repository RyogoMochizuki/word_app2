require 'test_helper'

class MaintenancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get maintenances_new_url
    assert_response :success
  end

  test "should get search" do
    get maintenances_search_url
    assert_response :success
  end

  test "should get edit" do
    get maintenances_edit_url
    assert_response :success
  end

  test "should get delete" do
    get maintenances_delete_url
    assert_response :success
  end

end
