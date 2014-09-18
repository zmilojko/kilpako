json.array!(@competition_formats) do |competition_format|
  json.extract! competition_format, :id, :name
  json.url competition_format_url(competition_format, format: :json)
end
