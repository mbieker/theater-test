json.array!(@events) do |event|
  json.extract! event, :id, :title, :artist, :description, :price_full, :price_disc
  json.url event_url(event, format: :json)
end
