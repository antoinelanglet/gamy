json.extract! user, :id, :id, :name, :mail, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
