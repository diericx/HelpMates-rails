json.extract! session, :id, :start_time, :end_time, :hourly_rate, :repeat_weekly, :user_id, :course_id, :created_at, :updated_at
json.url session_url(session, format: :json)
