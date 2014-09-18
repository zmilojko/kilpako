json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :admin
  json.url user_url(user, format: :json)
end
