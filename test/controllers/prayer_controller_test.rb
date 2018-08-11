require 'test_helper'

class PrayerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prayer_index_url
    assert_response :success
  end

end
