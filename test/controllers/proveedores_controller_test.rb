require 'test_helper'

class ProveedoresControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get proveedores_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get proveedores_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get proveedores_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get proveedores_editar_url
    assert_response :success
  end

end
