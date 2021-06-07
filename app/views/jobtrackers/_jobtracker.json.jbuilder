json.extract! jobtracker, :id, :company_name, :jd, :date_applied, :job_title, :status, :job_notes, :collateral, :user_id, :created_at, :updated_at
json.url jobtracker_url(jobtracker, format: :json)
