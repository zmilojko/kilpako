json.array!(@competitors) do |competitor|
  json.extract! competitor, :id, :number, :user_id, :competition_id
  json.url competitor_url(competitor, format: :json)
end
