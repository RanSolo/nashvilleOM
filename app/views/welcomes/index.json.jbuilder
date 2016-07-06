json.array!(@welcomes) do |welcome|
  json.extract! welcome, :id, :title, :notes, :headline
  json.url welcome_url(welcome, format: :json)
end
