require 'test_helper'

class EspecialidadesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get especialidades_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get especialidades_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get especialidades_nuevo_url
    assert_response :success
  end

  test "should get crear" do
    get especialidades_crear_url
    assert_response :success
  end

  test "should get editar" do
    get especialidades_editar_url
    assert_response :success
  end

  test "should get actualizar" do
    get especialidades_actualizar_url
    assert_response :success
  end

  test "should get eliminar" do
    get especialidades_eliminar_url
    assert_response :success
  end

end
