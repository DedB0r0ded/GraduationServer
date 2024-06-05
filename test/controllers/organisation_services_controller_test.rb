require "test_helper"

class OrganisationServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get organisation_services_index_url
    assert_response :success
  end

  test "should get show" do
    get organisation_services_show_url
    assert_response :success
  end

  test "should get new" do
    get organisation_services_new_url
    assert_response :success
  end

  test "should get create" do
    get organisation_services_create_url
    assert_response :success
  end

  test "should get edit" do
    get organisation_services_edit_url
    assert_response :success
  end

  test "should get update" do
    get organisation_services_update_url
    assert_response :success
  end

  test "should get destroy" do
    get organisation_services_destroy_url
    assert_response :success
  end
end
