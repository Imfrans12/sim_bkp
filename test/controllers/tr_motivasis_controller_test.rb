require 'test_helper'

class TrMotivasisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_motivasis_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_motivasis_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_motivasis_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_motivasis_update_url
    assert_response :success
  end

end
