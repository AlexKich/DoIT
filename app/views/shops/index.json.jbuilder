json.array!(@shops) do |shop|
  json.extract! shop, :number, :name, :town, :street, :bldg, :housing, :floor, :date_start, :date_end, :id_hard, :id_stock, :business_hours, :id_provider, :phone
  json.url shop_url(shop, format: :json)
end