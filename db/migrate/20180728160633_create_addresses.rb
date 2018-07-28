class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :county
      t.string :phone_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
