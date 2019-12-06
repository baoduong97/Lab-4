require 'test_helper'

class FilesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get files_controller_index_url
    assert_response :success
  end

end
