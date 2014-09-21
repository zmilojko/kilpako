json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :description, :start_date, :end_date, :status
  json.url competition_url(competition, format: :json)
end
