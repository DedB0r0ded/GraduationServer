class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.integer :component_id
      t.integer :facility_id
      t.integer :default_date_info_id

      t.timestamps
    end
  end
end
