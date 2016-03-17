class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :Appartment
      t.string :Street
      t.string :City
      t.string :PostalCode
      t.string :Province
      t.string :Size
      t.string :VegToppings
      t.string :NonVegToppings
      t.string :Crust
      t.float :Price

      t.timestamps null: false
    end
  end
end
