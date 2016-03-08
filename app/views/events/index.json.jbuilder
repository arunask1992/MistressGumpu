json.array!(@events) do |event|
  json.extract! event, :id, :title, :date, :venue_latitude, :venue_logitude, :genre_id, :description
  json.url event_url(event, format: :json)
end
