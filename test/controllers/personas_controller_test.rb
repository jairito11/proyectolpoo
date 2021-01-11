require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get personas_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get personas_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get personas_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get personas_crear_url
    assert_response :success
  end

  test "should get editar" do
    get personas_editar_url
    assert_response :success
  end

  test "should get actualizar" do
    get personas_actualizar_url
    assert_response :success
  end

  test "should get eliminar" do
    get personas_eliminar_url
    assert_response :success
  end

end
