require 'test_helper'

class ZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zone = zones(:one)
  end

  test "should get index" do
    get zones_url, as: :json
    assert_response :success
  end

  test "should create zone" do
    assert_difference('Zone.count') do
      post zones_url, params: { zone: { average_rating: @zone.average_rating, location: @zone.location, name: @zone.name, park_id: @zone.park_id, picture_url: @zone.picture_url } }, as: :json
    end

    assert_response 201
  end

  test "should show zone" do
    get zone_url(@zone), as: :json
    assert_response :success
  end

  test "should update zone" do
    patch zone_url(@zone), params: { zone: { average_rating: @zone.average_rating, location: @zone.location, name: @zone.name, park_id: @zone.park_id, picture_url: @zone.picture_url } }, as: :json
    assert_response 200
  end

  test "should destroy zone" do
    assert_difference('Zone.count', -1) do
      delete zone_url(@zone), as: :json
    end

    assert_response 204
  end
end
