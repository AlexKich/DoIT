json.array!(@providers) do |provider|
  json.extract! provider, :name_short, :name, :phone
  json.url provider_url(provider, format: :json)
end