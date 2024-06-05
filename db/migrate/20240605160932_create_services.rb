class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.integer :default_item_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
