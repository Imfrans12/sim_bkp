require 'test_helper'

class TrJurnal3sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_jurnal3s_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_jurnal3s_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_jurnal3s_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_jurnal3s_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_jurnal3s_new_url
    assert_response :success
  end

end
