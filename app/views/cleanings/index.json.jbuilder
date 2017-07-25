json.array!(@cleanings) do |cleaning|
  json.extract! cleaning, :date_check, :user_shop_start, :user_shop_end, :cenzor, :flooring, :wc, :shelves, :storeroom, :territory, :household_eq, :orderinbox, :orderindoc, :displayofgoods, :price_tags, :tech_eq
  json.url cleaning_url(cleaning, format: :json)
end