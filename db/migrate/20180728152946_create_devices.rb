class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :serial_number
      t.references :repair, foreign_key: true

      t.timestamps
    end
  end
end
