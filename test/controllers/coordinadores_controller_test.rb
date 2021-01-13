require 'test_helper'

class CoordinadoresControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get coordinadores_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get coordinadores_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get coordinadores_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get coordinadores_editar_url
    assert_response :success
  end

end
