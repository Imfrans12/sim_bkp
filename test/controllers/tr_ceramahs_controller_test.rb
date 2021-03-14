require 'test_helper'

class TrCeramahsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_ceramahs_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_ceramahs_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_ceramahs_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_ceramahs_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_ceramahs_new_url
    assert_response :success
  end

end
