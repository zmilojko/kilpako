json.array!(@races) do |race|
  json.extract! race, :id, :name, :status, :spots, :competition_id
  json.url race_url(race, format: :json)
end
