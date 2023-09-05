class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|
      t.string :motor_type
      t.string :maintenance_type
      t.string :motor_name
      t.string :city
      t.string :materials
      t.string :technician_email
      t.date :maintenance_date

      t.timestamps
    end
  end
end
