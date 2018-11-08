require 'test_helper'

class ReptilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reptiles_index_url
    assert_response :success
  end

  test "should get show" do
    get reptiles_show_url
    assert_response :success
  end

  test "should get new" do
    get reptiles_new_url
    assert_response :success
  end

  test "should get create" do
    get reptiles_create_url
    assert_response :success
  end

  test "should get edit" do
    get reptiles_edit_url
    assert_response :success
  end

  test "should get update" do
    get reptiles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get reptiles_destroy_url
    assert_response :success
  end

end
