json.extract! review, :id, :user_id, :reviewer_user_id, :rating, :notes, :created_at, :updated_at
json.url review_url(review, format: :json)
