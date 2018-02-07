json.extract! payment, :id, :from_user_id, :to_user_id, :help_session_id, :amount, :tip, :completed, :proof, :created_at, :updated_at
json.url payment_url(payment, format: :json)
