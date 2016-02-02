require 'test_helper'

class CommentControllerTest < ActionController::TestCase
  test "should get content" do
    get :content
    assert_response :success
  end

  test "should get user_id" do
    get :user_id
    assert_response :success
  end

  test "should get micropost_id" do
    get :micropost_id
    assert_response :success
  end

  test "should get comment_id" do
    get :comment_id
    assert_response :success
  end

end
