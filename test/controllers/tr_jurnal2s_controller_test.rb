require 'test_helper'

class TrJurnal2sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_jurnal2s_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_jurnal2s_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_jurnal2s_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_jurnal2s_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_jurnal2s_new_url
    assert_response :success
  end

end
