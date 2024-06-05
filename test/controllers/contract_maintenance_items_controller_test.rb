require "test_helper"

class ContractMaintenanceItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contract_maintenance_items_index_url
    assert_response :success
  end

  test "should get show" do
    get contract_maintenance_items_show_url
    assert_response :success
  end

  test "should get new" do
    get contract_maintenance_items_new_url
    assert_response :success
  end

  test "should get create" do
    get contract_maintenance_items_create_url
    assert_response :success
  end

  test "should get edit" do
    get contract_maintenance_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get contract_maintenance_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contract_maintenance_items_destroy_url
    assert_response :success
  end
end
