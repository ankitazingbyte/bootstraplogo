class CreateLogos < ActiveRecord::Migration[5.1]
  def change
    create_table :logos do |t|
      t.string :name
      t.string :avatar

      t.timestamps
    end
  end
end
