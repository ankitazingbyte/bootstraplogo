class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :logo
      t.references :order
      t.integer :quantity
      t.float :unit_price
      t.float :total_price

      t.timestamps
    end
  end
end
