require 'test_helper'

class HelpSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_session = help_sessions(:one)
  end

  test "should get index" do
    get help_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_help_session_url
    assert_response :success
  end

  test "should create help_session" do
    assert_difference('HelpSession.count') do
      post help_sessions_url, params: { help_session: { cancelled: @help_session.cancelled, cancelled_by: @help_session.cancelled_by, course_id: @help_session.course_id, end: @help_session.end, ended_at: @help_session.ended_at, message: @help_session.message, start: @help_session.start, started_at: @help_session.started_at, tutor_ended: @help_session.tutor_ended, tutor_id: @help_session.tutor_id, tutor_started: @help_session.tutor_started, user_ended: @help_session.user_ended, user_id: @help_session.user_id, user_started: @help_session.user_started } }
    end

    assert_redirected_to help_session_url(HelpSession.last)
  end

  test "should show help_session" do
    get help_session_url(@help_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_session_url(@help_session)
    assert_response :success
  end

  test "should update help_session" do
    patch help_session_url(@help_session), params: { help_session: { cancelled: @help_session.cancelled, cancelled_by: @help_session.cancelled_by, course_id: @help_session.course_id, end: @help_session.end, ended_at: @help_session.ended_at, message: @help_session.message, start: @help_session.start, started_at: @help_session.started_at, tutor_ended: @help_session.tutor_ended, tutor_id: @help_session.tutor_id, tutor_started: @help_session.tutor_started, user_ended: @help_session.user_ended, user_id: @help_session.user_id, user_started: @help_session.user_started } }
    assert_redirected_to help_session_url(@help_session)
  end

  test "should destroy help_session" do
    assert_difference('HelpSession.count', -1) do
      delete help_session_url(@help_session)
    end

    assert_redirected_to help_sessions_url
  end
end
