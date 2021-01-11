require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get roles_inicio_url
    assert_response :success
  end

end
