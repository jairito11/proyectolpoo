require 'test_helper'

class AsociacionesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get asociaciones_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get asociaciones_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get asociaciones_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get asociaciones_editar_url
    assert_response :success
  end

end
