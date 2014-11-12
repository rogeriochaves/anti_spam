require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { email: @message.email, message: @message.message, name: @message.name, telephone: @message.telephone }, antispam_token: AntiSpam.token
    end

    assert_redirected_to message_path(assigns(:message))
  end

  test "should not create if is spam" do
    post :create, message: { email: @message.email, message: @message.message, name: @message.name, telephone: @message.telephone }
    assert_response 403
  end

  test "should show message" do
    get :show, id: @message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message
    assert_response :success
  end

  test "should update message" do
    patch :update, id: @message, message: { email: @message.email, message: @message.message, name: @message.name, telephone: @message.telephone }, antispam_token: AntiSpam.token
    assert_redirected_to message_path(assigns(:message))
  end

  test "should not update if is spam" do
    patch :update, id: @message, message: { email: @message.email, message: @message.message, name: @message.name, telephone: @message.telephone }
    assert_response 403
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end