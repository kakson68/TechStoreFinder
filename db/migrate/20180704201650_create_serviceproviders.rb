class CreateServiceproviders < ActiveRecord::Migration[5.1]
  def change
    create_table :serviceproviders do |t|
      t.string :title
      t.string :rep
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
