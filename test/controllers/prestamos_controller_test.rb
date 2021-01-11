require 'test_helper'

class PrestamosControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get prestamos_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get prestamos_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get prestamos_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get prestamos_crear_url
    assert_response :success
  end

  test "should get editar" do
    get prestamos_editar_url
    assert_response :success
  end

  test "should get actualizar" do
    get prestamos_actualizar_url
    assert_response :success
  end

  test "should get eliminar" do
    get prestamos_eliminar_url
    assert_response :success
  end

end
