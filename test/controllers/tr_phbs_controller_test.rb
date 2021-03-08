require 'test_helper'

class TrPhbsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_phbs_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_phbs_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_phbs_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_phbs_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_phbs_new_url
    assert_response :success
  end

end
