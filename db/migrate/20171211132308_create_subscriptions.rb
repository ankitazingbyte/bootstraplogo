class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :card_number
      t.integer :card_code
      t.integer :card_month

      t.timestamps
    end
  end
end
