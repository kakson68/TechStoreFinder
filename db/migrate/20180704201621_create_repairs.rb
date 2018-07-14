class CreateRepairs < ActiveRecord::Migration[5.1]
  def change
    create_table :repairs do |t|
      t.string :job_number
      t.string :fault
      t.text :descrition
      t.string :repair_type
      t.datetime :booking_date
      t.string :location
      t.string :repairer

      t.timestamps
    end
  end
end
