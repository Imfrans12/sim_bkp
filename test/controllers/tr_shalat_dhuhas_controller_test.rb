require 'test_helper'

class TrShalatDhuhasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_shalat_dhuhas_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_shalat_dhuhas_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_shalat_dhuhas_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_shalat_dhuhas_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_shalat_dhuhas_new_url
    assert_response :success
  end

end
