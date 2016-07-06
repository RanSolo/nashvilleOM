json.array!(@events) do |event|
  json.extract! event, :id, :band_id, :title, :description
  json.start event.start_time
  json.start_time event.start_time.strftime('%l:%M')
  json.end event.end_time
  json.url event_url(event, format: :html)
  json.name event.band.name
end
