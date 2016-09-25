require 'test_helper'

class CupsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cups_new_url
    assert_response :success
  end

  test "should get create" do
    get cups_create_url
    assert_response :success
  end

  test "should get update" do
    get cups_update_url
    assert_response :success
  end

  test "should get edit" do
    get cups_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get cups_destroy_url
    assert_response :success
  end

  test "should get show" do
    get cups_show_url
    assert_response :success
  end

  test "should get index" do
    get cups_index_url
    assert_response :success
  end

end
