class AddFieldToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :blog_id, :integer
  end
end
