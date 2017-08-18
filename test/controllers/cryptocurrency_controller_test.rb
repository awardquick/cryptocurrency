require 'test_helper'

class CryptocurrencyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cryptocurrency_index_url
    assert_response :success
  end

end
