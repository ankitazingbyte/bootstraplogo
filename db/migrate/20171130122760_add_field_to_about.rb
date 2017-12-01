class AddFieldToAbout < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :avatar, :string
  end
end
