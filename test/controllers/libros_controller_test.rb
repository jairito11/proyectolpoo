require 'test_helper'

class LibrosControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get libros_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get libros_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get libros_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get libros_crear_url
    assert_response :success
  end

  test "should get editar" do
    get libros_editar_url
    assert_response :success
  end

  test "should get actualizar" do
    get libros_actualizar_url
    assert_response :success
  end

  test "should get eliminar" do
    get libros_eliminar_url
    assert_response :success
  end

end
