require 'test_helper'

class CorepresentantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corepresentant = corepresentants(:one)
  end

  test "should get index" do
    get corepresentants_url
    assert_response :success
  end

  test "should get new" do
    get new_corepresentant_url
    assert_response :success
  end

  test "should create corepresentant" do
    assert_difference('Corepresentant.count') do
      post corepresentants_url, params: { corepresentant: {  } }
    end

    assert_redirected_to corepresentant_url(Corepresentant.last)
  end

  test "should show corepresentant" do
    get corepresentant_url(@corepresentant)
    assert_response :success
  end

  test "should get edit" do
    get edit_corepresentant_url(@corepresentant)
    assert_response :success
  end

  test "should update corepresentant" do
    patch corepresentant_url(@corepresentant), params: { corepresentant: {  } }
    assert_redirected_to corepresentant_url(@corepresentant)
  end

  test "should destroy corepresentant" do
    assert_difference('Corepresentant.count', -1) do
      delete corepresentant_url(@corepresentant)
    end

    assert_redirected_to corepresentants_url
  end
end
