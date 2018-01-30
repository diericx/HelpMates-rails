require 'test_helper'

class HelpSessionRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_session_request = help_session_requests(:one)
  end

  test "should get index" do
    get help_session_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_help_session_request_url
    assert_response :success
  end

  test "should create help_session_request" do
    assert_difference('HelpSessionRequest.count') do
      post help_session_requests_url, params: { help_session_request: { accepted: @help_session_request.accepted, course_id: @help_session_request.course_id, denied: @help_session_request.denied, denied_by: @help_session_request.denied_by, end: @help_session_request.end, message: @help_session_request.message, start: @help_session_request.start, tutor_id: @help_session_request.tutor_id, user_id: @help_session_request.user_id } }
    end

    assert_redirected_to help_session_request_url(HelpSessionRequest.last)
  end

  test "should show help_session_request" do
    get help_session_request_url(@help_session_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_session_request_url(@help_session_request)
    assert_response :success
  end

  test "should update help_session_request" do
    patch help_session_request_url(@help_session_request), params: { help_session_request: { accepted: @help_session_request.accepted, course_id: @help_session_request.course_id, denied: @help_session_request.denied, denied_by: @help_session_request.denied_by, end: @help_session_request.end, message: @help_session_request.message, start: @help_session_request.start, tutor_id: @help_session_request.tutor_id, user_id: @help_session_request.user_id } }
    assert_redirected_to help_session_request_url(@help_session_request)
  end

  test "should destroy help_session_request" do
    assert_difference('HelpSessionRequest.count', -1) do
      delete help_session_request_url(@help_session_request)
    end

    assert_redirected_to help_session_requests_url
  end
end
