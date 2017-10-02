json.extract! registration, :id, :first_name, :last_name, :user_email, :subject, :created_at, :updated_at
json.url registration_url(registration, format: :json)
