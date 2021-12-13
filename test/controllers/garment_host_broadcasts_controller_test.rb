require "test_helper"

class GarmentHostBroadcastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garment_host_broadcast = garment_host_broadcasts(:one)
  end

  test "should get index" do
    get garment_host_broadcasts_url
    assert_response :success
  end

  test "should get new" do
    get new_garment_host_broadcast_url
    assert_response :success
  end

  test "should create garment_host_broadcast" do
    assert_difference('GarmentHostBroadcast.count') do
      post garment_host_broadcasts_url, params: { garment_host_broadcast: { broadcast_id: @garment_host_broadcast.broadcast_id, garment_id: @garment_host_broadcast.garment_id, host_id: @garment_host_broadcast.host_id } }
    end

    assert_redirected_to garment_host_broadcast_url(GarmentHostBroadcast.last)
  end

  test "should show garment_host_broadcast" do
    get garment_host_broadcast_url(@garment_host_broadcast)
    assert_response :success
  end

  test "should get edit" do
    get edit_garment_host_broadcast_url(@garment_host_broadcast)
    assert_response :success
  end

  test "should update garment_host_broadcast" do
    patch garment_host_broadcast_url(@garment_host_broadcast), params: { garment_host_broadcast: { broadcast_id: @garment_host_broadcast.broadcast_id, garment_id: @garment_host_broadcast.garment_id, host_id: @garment_host_broadcast.host_id } }
    assert_redirected_to garment_host_broadcast_url(@garment_host_broadcast)
  end

  test "should destroy garment_host_broadcast" do
    assert_difference('GarmentHostBroadcast.count', -1) do
      delete garment_host_broadcast_url(@garment_host_broadcast)
    end

    assert_redirected_to garment_host_broadcasts_url
  end
end
