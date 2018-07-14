class CreateSolutions < ActiveRecord::Migration[5.1]
  def change
    create_table :solutions do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.references :serviceprovider, foreign_key: true
      t.references :repair, foreign_key: true

      t.timestamps
    end
  end
end
