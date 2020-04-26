require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get account_id:integer" do
    get comment_account_id:integer_url
    assert_response :success
  end

  test "should get post_id:integer" do
    get comment_post_id:integer_url
    assert_response :success
  end

end
