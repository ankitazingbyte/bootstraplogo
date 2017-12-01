class AddFieldsToLogo < ActiveRecord::Migration[5.1]
  def change
    add_column :logos, :price, :float
    add_column :logos, :order_id, :integer
    add_column :logos, :quantity, :integer
    add_column :logos, :cart_id, :integer
  end
end
