require 'test_helper'

class TrPengajiansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_pengajians_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_pengajians_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_pengajians_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_pengajians_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_pengajians_new_url
    assert_response :success
  end

end
