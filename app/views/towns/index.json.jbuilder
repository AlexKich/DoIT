json.array!(@towns) do |town|
  json.extract! town, :town_name
  json.url town_url(town, format: :json)
end