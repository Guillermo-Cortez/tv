require "application_system_test_case"

class GarmentHostBroadcastsTest < ApplicationSystemTestCase
  setup do
    @garment_host_broadcast = garment_host_broadcasts(:one)
  end

  test "visiting the index" do
    visit garment_host_broadcasts_url
    assert_selector "h1", text: "Garment Host Broadcasts"
  end

  test "creating a Garment host broadcast" do
    visit garment_host_broadcasts_url
    click_on "New Garment Host Broadcast"

    fill_in "Broadcast", with: @garment_host_broadcast.broadcast_id
    fill_in "Garment", with: @garment_host_broadcast.garment_id
    fill_in "Host", with: @garment_host_broadcast.host_id
    click_on "Create Garment host broadcast"

    assert_text "Garment host broadcast was successfully created"
    click_on "Back"
  end

  test "updating a Garment host broadcast" do
    visit garment_host_broadcasts_url
    click_on "Edit", match: :first

    fill_in "Broadcast", with: @garment_host_broadcast.broadcast_id
    fill_in "Garment", with: @garment_host_broadcast.garment_id
    fill_in "Host", with: @garment_host_broadcast.host_id
    click_on "Update Garment host broadcast"

    assert_text "Garment host broadcast was successfully updated"
    click_on "Back"
  end

  test "destroying a Garment host broadcast" do
    visit garment_host_broadcasts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Garment host broadcast was successfully destroyed"
  end
end
