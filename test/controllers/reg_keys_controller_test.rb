require "test_helper"

class RegKeysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reg_keys_index_url
    assert_response :success
  end

  test "should get show" do
    get reg_keys_show_url
    assert_response :success
  end

  test "should get new" do
    get reg_keys_new_url
    assert_response :success
  end

  test "should get create" do
    get reg_keys_create_url
    assert_response :success
  end

  test "should get edit" do
    get reg_keys_edit_url
    assert_response :success
  end

  test "should get update" do
    get reg_keys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reg_keys_destroy_url
    assert_response :success
  end
end
