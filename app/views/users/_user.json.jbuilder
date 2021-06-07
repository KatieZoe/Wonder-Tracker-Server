json.extract! user, :id, :name, :email, :password_digest, :admin, :image_url, :linkedin_url, :github_url, :student_status, :cohort_id, :created_at, :updated_at
json.url user_url(user, format: :json)
