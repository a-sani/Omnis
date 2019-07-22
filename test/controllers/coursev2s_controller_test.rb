require 'test_helper'

class Coursev2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coursev2 = coursev2s(:one)
  end

  test "should get index" do
    get coursev2s_url
    assert_response :success
  end

  test "should get new" do
    get new_coursev2_url
    assert_response :success
  end

  test "should create coursev2" do
    assert_difference('Coursev2.count') do
      post coursev2s_url, params: { coursev2: { duedate: @coursev2.duedate, name: @coursev2.name, notes: @coursev2.notes, website: @coursev2.website } }
    end

    assert_redirected_to coursev2_url(Coursev2.last)
  end

  test "should show coursev2" do
    get coursev2_url(@coursev2)
    assert_response :success
  end

  test "should get edit" do
    get edit_coursev2_url(@coursev2)
    assert_response :success
  end

  test "should update coursev2" do
    patch coursev2_url(@coursev2), params: { coursev2: { duedate: @coursev2.duedate, name: @coursev2.name, notes: @coursev2.notes, website: @coursev2.website } }
    assert_redirected_to coursev2_url(@coursev2)
  end

  test "should destroy coursev2" do
    assert_difference('Coursev2.count', -1) do
      delete coursev2_url(@coursev2)
    end

    assert_redirected_to coursev2s_url
  end
end
