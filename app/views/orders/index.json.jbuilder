json.array!(@orders) do |order|
  json.extract! order, :id, :Appartment, :Street, :City, :PostalCode, :Province, :Size, :VegToppings, :NonVegToppings, :Crust, :Price
  json.url order_url(order, format: :json)
end
