require 'test_helper'

class TrShalatFardusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_shalat_fardus_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_shalat_fardus_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_shalat_fardus_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_shalat_fardus_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_shalat_fardus_new_url
    assert_response :success
  end

end
