class AddUserIdToRepairs < ActiveRecord::Migration[5.1]
  def change
    add_column :repairs, :user_id, :integer
  end
end
