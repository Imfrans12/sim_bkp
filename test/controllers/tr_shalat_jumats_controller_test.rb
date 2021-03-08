require 'test_helper'

class TrShalatJumatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_shalat_jumats_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_shalat_jumats_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_shalat_jumats_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_shalat_jumats_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_shalat_jumats_new_url
    assert_response :success
  end

end
