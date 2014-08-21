json.array!(@moniks) do |monik|
  json.extract! monik, :inv_num, :by_doc, :by_price, :monitor_name, :diagonal, :spian, :spisan_txt, :department_id, :company_id
  json.url monik_url(monik, format: :json)
end