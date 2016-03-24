class AddCustomerIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customerId, :string
  end
end
