json.extract! email, :id, :email, :inscription_id, :created_at, :updated_at
json.url email_url(email, format: :json)