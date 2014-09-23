json.array!(@event_pages) do |event_page|
  json.extract! event_page, :id, :name, :content, :event_id
  json.url event_page_url(event_page, format: :json)
end
