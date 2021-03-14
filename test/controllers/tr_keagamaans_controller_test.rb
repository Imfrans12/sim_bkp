require 'test_helper'

class TrKeagamaansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tr_keagamaans_index_url
    assert_response :success
  end

  test "should get show" do
    get tr_keagamaans_show_url
    assert_response :success
  end

  test "should get edit" do
    get tr_keagamaans_edit_url
    assert_response :success
  end

  test "should get update" do
    get tr_keagamaans_update_url
    assert_response :success
  end

  test "should get new" do
    get tr_keagamaans_new_url
    assert_response :success
  end

end
