require "application_system_test_case"

class TypeOfGarmentsTest < ApplicationSystemTestCase
  setup do
    @type_of_garment = type_of_garments(:one)
  end

  test "visiting the index" do
    visit type_of_garments_url
    assert_selector "h1", text: "Type Of Garments"
  end

  test "creating a Type of garment" do
    visit type_of_garments_url
    click_on "New Type Of Garment"

    fill_in "Description", with: @type_of_garment.description
    fill_in "Name", with: @type_of_garment.name
    click_on "Create Type of garment"

    assert_text "Type of garment was successfully created"
    click_on "Back"
  end

  test "updating a Type of garment" do
    visit type_of_garments_url
    click_on "Edit", match: :first

    fill_in "Description", with: @type_of_garment.description
    fill_in "Name", with: @type_of_garment.name
    click_on "Update Type of garment"

    assert_text "Type of garment was successfully updated"
    click_on "Back"
  end

  test "destroying a Type of garment" do
    visit type_of_garments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type of garment was successfully destroyed"
  end
end
