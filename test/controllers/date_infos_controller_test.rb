require "test_helper"

class DateInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get date_infos_index_url
    assert_response :success
  end

  test "should get show" do
    get date_infos_show_url
    assert_response :success
  end

  test "should get new" do
    get date_infos_new_url
    assert_response :success
  end

  test "should get create" do
    get date_infos_create_url
    assert_response :success
  end

  test "should get edit" do
    get date_infos_edit_url
    assert_response :success
  end

  test "should get update" do
    get date_infos_update_url
    assert_response :success
  end

  test "should get destroy" do
    get date_infos_destroy_url
    assert_response :success
  end
end
