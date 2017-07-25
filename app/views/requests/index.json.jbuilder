json.array!(@requests) do |request|
  json.extract! request, :department, :reponsible, :dedline, :dateend, :subject, :descr, :author, :doc
  json.url request_url(request, format: :json)
end