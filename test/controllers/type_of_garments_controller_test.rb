require "test_helper"

class TypeOfGarmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_of_garment = type_of_garments(:one)
  end

  test "should get index" do
    get type_of_garments_url
    assert_response :success
  end

  test "should get new" do
    get new_type_of_garment_url
    assert_response :success
  end

  test "should create type_of_garment" do
    assert_difference('TypeOfGarment.count') do
      post type_of_garments_url, params: { type_of_garment: { description: @type_of_garment.description, name: @type_of_garment.name } }
    end

    assert_redirected_to type_of_garment_url(TypeOfGarment.last)
  end

  test "should show type_of_garment" do
    get type_of_garment_url(@type_of_garment)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_of_garment_url(@type_of_garment)
    assert_response :success
  end

  test "should update type_of_garment" do
    patch type_of_garment_url(@type_of_garment), params: { type_of_garment: { description: @type_of_garment.description, name: @type_of_garment.name } }
    assert_redirected_to type_of_garment_url(@type_of_garment)
  end

  test "should destroy type_of_garment" do
    assert_difference('TypeOfGarment.count', -1) do
      delete type_of_garment_url(@type_of_garment)
    end

    assert_redirected_to type_of_garments_url
  end
end
