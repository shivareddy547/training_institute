require 'test_helper'

class MailUsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mail_u = mail_us(:one)
  end

  test "should get index" do
    get mail_us_url
    assert_response :success
  end

  test "should get new" do
    get new_mail_u_url
    assert_response :success
  end

  test "should create mail_u" do
    assert_difference('MailU.count') do
      post mail_us_url, params: { mail_u: { description: @mail_u.description, email: @mail_u.email, name: @mail_u.name, subject: @mail_u.subject } }
    end

    assert_redirected_to mail_u_url(MailU.last)
  end

  test "should show mail_u" do
    get mail_u_url(@mail_u)
    assert_response :success
  end

  test "should get edit" do
    get edit_mail_u_url(@mail_u)
    assert_response :success
  end

  test "should update mail_u" do
    patch mail_u_url(@mail_u), params: { mail_u: { description: @mail_u.description, email: @mail_u.email, name: @mail_u.name, subject: @mail_u.subject } }
    assert_redirected_to mail_u_url(@mail_u)
  end

  test "should destroy mail_u" do
    assert_difference('MailU.count', -1) do
      delete mail_u_url(@mail_u)
    end

    assert_redirected_to mail_us_url
  end
end
