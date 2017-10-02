json.extract! mail_u, :id, :name, :email, :subject, :description, :created_at, :updated_at
json.url mail_u_url(mail_u, format: :json)
