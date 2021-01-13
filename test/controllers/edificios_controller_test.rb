require 'test_helper'

class EdificiosControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get edificios_inicio_url
    assert_response :success
  end

  test "should get mostrar" do
    get edificios_mostrar_url
    assert_response :success
  end

  test "should get nuevo" do
    get edificios_nuevo_url
    assert_response :success
  end

  test "should get editar" do
    get edificios_editar_url
    assert_response :success
  end

end
