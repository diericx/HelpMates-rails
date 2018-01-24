json.extract! availability, :id, :start_time, :end_time, :hourly_rate, :repeat_weekly, :user_id, :course_id, :created_at, :updated_at
json.url availability_url(availability, format: :json)
