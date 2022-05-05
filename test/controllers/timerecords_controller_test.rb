require 'test_helper'

class TimerecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timerecords_index_url
    assert_response :success
  end

end
