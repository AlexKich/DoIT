json.array!(@coworkers) do |coworker|
  json.extract! coworker, :coworker_name, :location
  json.url coworker_url(coworker, format: :json)
end