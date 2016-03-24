module OrdersHelper
     def checked(area)
        @order.VegToppings.nil? ? false : @order.VegToppings.match(area)
        @order.NonVegToppings.nil? ? false : @order.NonVegToppings.match(area)
    end
end
