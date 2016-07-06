json.array!(@bands) do |band|
  json.extract! band, :id, :name, :link
  json.url band_url(band, format: :json)
end
