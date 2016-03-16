json.array!(@customers) do |customer|
  json.extract! customer, :id, :NAME
  json.url customer_url(customer, format: :json)
end
