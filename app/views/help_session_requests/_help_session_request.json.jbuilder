json.extract! help_session_request, :id, :user_id, :tutor_id, :course_id, :start, :end, :accepted, :denied, :denied_by, :message, :created_at, :updated_at
json.url help_session_request_url(help_session_request, format: :json)
