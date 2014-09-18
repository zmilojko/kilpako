json.array!(@race_formats) do |race_format|
  json.extract! race_format, :id, :name
  json.url race_format_url(race_format, format: :json)
end
