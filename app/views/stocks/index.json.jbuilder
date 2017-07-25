json.array!(@stocks) do |stock|
  json.extract! stock, :name, :amount, :availabil
  json.url stock_url(stock, format: :json)
end