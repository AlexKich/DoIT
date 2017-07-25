json.array!(@streets) do |street|
  json.extract! street, :street_name
  json.url street_url(street, format: :json)
end