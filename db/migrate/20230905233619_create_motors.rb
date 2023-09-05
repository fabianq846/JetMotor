class CreateMotors < ActiveRecord::Migration[7.0]
  def change
    create_table :motors do |t|
      t.string :equipment_type
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
