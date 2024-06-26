require "test_helper"

class ComponentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get components_index_url
    assert_response :success
  end

  test "should get show" do
    get components_show_url
    assert_response :success
  end

  test "should get new" do
    get components_new_url
    assert_response :success
  end

  test "should get create" do
    get components_create_url
    assert_response :success
  end

  test "should get edit" do
    get components_edit_url
    assert_response :success
  end

  test "should get update" do
    get components_update_url
    assert_response :success
  end

  test "should get destroy" do
    get components_destroy_url
    assert_response :success
  end
end
