class AddCategoryIdToLogo < ActiveRecord::Migration[5.1]
  def change
    add_column :logos, :category_id, :integer
  end
end
