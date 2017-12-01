class AddFieldToLogo < ActiveRecord::Migration[5.1]
  def change
    add_column :logos, :description, :text
  end
end
