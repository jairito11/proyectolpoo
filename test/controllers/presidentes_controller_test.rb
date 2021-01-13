require 'test_helper'

class PresidentesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get presidentes_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get presidentes_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get presidentes_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get presidentes_editar_url
    assert_response :success
  end

end
