require 'test_helper'

class MsKodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ms_kode_index_url
    assert_response :success
  end

  test "should get show" do
    get ms_kode_show_url
    assert_response :success
  end

  test "should get edit" do
    get ms_kode_edit_url
    assert_response :success
  end

  test "should get update" do
    get ms_kode_update_url
    assert_response :success
  end

  test "should get new" do
    get ms_kode_new_url
    assert_response :success
  end

  test "should get create" do
    get ms_kode_create_url
    assert_response :success
  end

  test "should get destroy" do
    get ms_kode_destroy_url
    assert_response :success
  end

end
