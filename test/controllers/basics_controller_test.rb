require "test_helper"

class BasicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @basic = basics(:one)
  end

  test "should get index" do
    get basics_url
    assert_response :success
  end

  test "should get new" do
    get new_basic_url
    assert_response :success
  end

  test "should create basic" do
    assert_difference("Basic.count") do
      post basics_url, params: { basic: { address: @basic.address, city: @basic.city, name: @basic.name, neighborhood: @basic.neighborhood, number: @basic.number, phone: @basic.phone, postal: @basic.postal, state: @basic.state } }
    end

    assert_redirected_to basic_url(Basic.last)
  end

  test "should show basic" do
    get basic_url(@basic)
    assert_response :success
  end

  test "should get edit" do
    get edit_basic_url(@basic)
    assert_response :success
  end

  test "should update basic" do
    patch basic_url(@basic), params: { basic: { address: @basic.address, city: @basic.city, name: @basic.name, neighborhood: @basic.neighborhood, number: @basic.number, phone: @basic.phone, postal: @basic.postal, state: @basic.state } }
    assert_redirected_to basic_url(@basic)
  end

  test "should destroy basic" do
    assert_difference("Basic.count", -1) do
      delete basic_url(@basic)
    end

    assert_redirected_to basics_url
  end
end
