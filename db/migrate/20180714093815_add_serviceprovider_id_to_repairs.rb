class AddServiceproviderIdToRepairs < ActiveRecord::Migration[5.1]
  def change
    add_reference :repairs, :serviceprovider, foreign_key: true
  end
end
