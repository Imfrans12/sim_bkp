require 'test_helper'

class TrEsdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_esds_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_esds_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_esds_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_esds_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_esds_new_url
    assert_response :success
  end

end
