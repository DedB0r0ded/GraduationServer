class CreateManufacturers < ActiveRecord::Migration[7.1]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :code
      t.string :country
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
