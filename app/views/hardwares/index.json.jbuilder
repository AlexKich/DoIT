json.array!(@hardwares) do |hardware|
  json.extract! hardware, :inv_num, :company_id, :department_id, :by_doc, :by_price, :model_name, :notebook, :cpu, :memory, :hdd, :keyboard, :mouse, :speaker, :spisan, :spisan_txt, :user_id
  json.url hardware_url(hardware, format: :json)
end