class CreateContractMaintenanceItems < ActiveRecord::Migration[7.1]
  def change
    create_table :contract_maintenance_items do |t|
      t.integer :component_id
      t.integer :contract_id
      t.integer :maintenance_date_info_id
      t.integer :replacement_date_info_id

      t.timestamps
    end
  end
end
