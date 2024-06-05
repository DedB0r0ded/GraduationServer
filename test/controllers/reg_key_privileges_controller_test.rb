require "test_helper"

class RegKeyPrivilegesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reg_key_privileges_index_url
    assert_response :success
  end

  test "should get show" do
    get reg_key_privileges_show_url
    assert_response :success
  end

  test "should get new" do
    get reg_key_privileges_new_url
    assert_response :success
  end

  test "should get create" do
    get reg_key_privileges_create_url
    assert_response :success
  end

  test "should get edit" do
    get reg_key_privileges_edit_url
    assert_response :success
  end

  test "should get update" do
    get reg_key_privileges_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reg_key_privileges_destroy_url
    assert_response :success
  end
end
