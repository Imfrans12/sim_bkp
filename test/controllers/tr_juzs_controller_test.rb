require 'test_helper'

class TrJuzsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_juzs_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_juzs_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_juzs_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_juzs_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_juzs_new_url
    assert_response :success
  end

end
