class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :NAME

      t.timestamps null: false
    end
  end
end
