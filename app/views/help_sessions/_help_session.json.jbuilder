json.extract! help_session, :id, :user_id, :tutor_id, :course_id, :user_started, :tutor_started, :started_at, :user_ended, :tutor_ended, :ended_at, :start, :end, :cancelled, :cancelled_by, :message, :created_at, :updated_at
json.url help_session_url(help_session, format: :json)
