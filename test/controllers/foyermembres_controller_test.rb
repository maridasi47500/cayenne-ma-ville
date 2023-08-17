require 'test_helper'

class FoyermembresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foyermembre = foyermembres(:one)
  end

  test "should get index" do
    get foyermembres_url
    assert_response :success
  end

  test "should get new" do
    get new_foyermembre_url
    assert_response :success
  end

  test "should create foyermembre" do
    assert_difference('Foyermembre.count') do
      post foyermembres_url, params: { foyermembre: {  } }
    end

    assert_redirected_to foyermembre_url(Foyermembre.last)
  end

  test "should show foyermembre" do
    get foyermembre_url(@foyermembre)
    assert_response :success
  end

  test "should get edit" do
    get edit_foyermembre_url(@foyermembre)
    assert_response :success
  end

  test "should update foyermembre" do
    patch foyermembre_url(@foyermembre), params: { foyermembre: {  } }
    assert_redirected_to foyermembre_url(@foyermembre)
  end

  test "should destroy foyermembre" do
    assert_difference('Foyermembre.count', -1) do
      delete foyermembre_url(@foyermembre)
    end

    assert_redirected_to foyermembres_url
  end
end
