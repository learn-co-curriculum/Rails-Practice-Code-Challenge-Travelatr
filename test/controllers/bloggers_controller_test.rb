require 'test_helper'

class BloggersControllerTest < ActionDispatch::IntegrationTest
  test "should get destinations" do
    get bloggers_destinations_url
    assert_response :success
  end

  test "should get posts" do
    get bloggers_posts_url
    assert_response :success
  end

end
