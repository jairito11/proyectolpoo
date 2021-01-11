require 'test_helper'

class EditorialesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @editorial = editoriales(:one)
  end

  test "should get index" do
    get editoriales_url
    assert_response :success
  end

  test "should get new" do
    get new_editorial_url
    assert_response :success
  end

  test "should create editorial" do
    assert_difference('Editorial.count') do
      post editoriales_url, params: { editorial: { formaLegal: @editorial.formaLegal, fundacion: @editorial.fundacion, fundador: @editorial.fundador, industria: @editorial.industria, isin: @editorial.isin, nombre: @editorial.nombre, sede: @editorial.sede, tipo: @editorial.tipo } }
    end

    assert_redirected_to editorial_url(Editorial.last)
  end

  test "should show editorial" do
    get editorial_url(@editorial)
    assert_response :success
  end

  test "should get edit" do
    get edit_editorial_url(@editorial)
    assert_response :success
  end

  test "should update editorial" do
    patch editorial_url(@editorial), params: { editorial: { formaLegal: @editorial.formaLegal, fundacion: @editorial.fundacion, fundador: @editorial.fundador, industria: @editorial.industria, isin: @editorial.isin, nombre: @editorial.nombre, sede: @editorial.sede, tipo: @editorial.tipo } }
    assert_redirected_to editorial_url(@editorial)
  end

  test "should destroy editorial" do
    assert_difference('Editorial.count', -1) do
      delete editorial_url(@editorial)
    end

    assert_redirected_to editoriales_url
  end
end
