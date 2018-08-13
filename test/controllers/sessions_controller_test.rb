require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
 
  test "should get new" do
    get login_path
    assert_response :success
  end
  
  # 現在のユーザーをログアウトする
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
