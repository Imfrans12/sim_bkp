require 'test_helper'

class TrJurnalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_jurnals_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_jurnals_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_jurnals_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_jurnals_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_jurnals_new_url
    assert_response :success
  end

end
