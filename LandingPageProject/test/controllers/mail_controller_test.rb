require 'test_helper'

class MailControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mail_new_url
    assert_response :success
  end

  test "should get create" do
    get mail_create_url
    assert_response :success
  end

  test "should get show" do
    get mail_show_url
    assert_response :success
  end

end
