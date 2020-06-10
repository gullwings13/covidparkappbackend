require 'test_helper'

class ParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @park = parks(:one)
  end

  test "should get index" do
    get parks_url, as: :json
    assert_response :success
  end

  test "should create park" do
    assert_difference('Park.count') do
      post parks_url, params: { park: { address: @park.address, average_rating: @park.average_rating, boro: @park.boro, link: @park.link, name: @park.name, picture_url: @park.picture_url } }, as: :json
    end

    assert_response 201
  end

  test "should show park" do
    get park_url(@park), as: :json
    assert_response :success
  end

  test "should update park" do
    patch park_url(@park), params: { park: { address: @park.address, average_rating: @park.average_rating, boro: @park.boro, link: @park.link, name: @park.name, picture_url: @park.picture_url } }, as: :json
    assert_response 200
  end

  test "should destroy park" do
    assert_difference('Park.count', -1) do
      delete park_url(@park), as: :json
    end

    assert_response 204
  end
end
