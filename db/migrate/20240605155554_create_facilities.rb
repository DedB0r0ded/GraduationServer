class CreateFacilities < ActiveRecord::Migration[7.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.string :serial_number
      t.date :manufacture_year
      t.integer :manufacturer_id
      t.string :pic_route

      t.timestamps
    end
  end
end
