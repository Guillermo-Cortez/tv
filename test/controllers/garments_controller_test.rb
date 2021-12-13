require "test_helper"

class GarmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garment = garments(:one)
  end

  test "should get index" do
    get garments_url
    assert_response :success
  end

  test "should get new" do
    get new_garment_url
    assert_response :success
  end

  test "should create garment" do
    assert_difference('Garment.count') do
      post garments_url, params: { garment: { brand_id: @garment.brand_id, colour_id: @garment.colour_id, description: @garment.description, typeOfGarment_id: @garment.typeOfGarment_id } }
    end

    assert_redirected_to garment_url(Garment.last)
  end

  test "should show garment" do
    get garment_url(@garment)
    assert_response :success
  end

  test "should get edit" do
    get edit_garment_url(@garment)
    assert_response :success
  end

  test "should update garment" do
    patch garment_url(@garment), params: { garment: { brand_id: @garment.brand_id, colour_id: @garment.colour_id, description: @garment.description, typeOfGarment_id: @garment.typeOfGarment_id } }
    assert_redirected_to garment_url(@garment)
  end

  test "should destroy garment" do
    assert_difference('Garment.count', -1) do
      delete garment_url(@garment)
    end

    assert_redirected_to garments_url
  end
end
