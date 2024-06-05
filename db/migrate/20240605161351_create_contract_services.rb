class CreateContractServices < ActiveRecord::Migration[7.1]
  def change
    create_table :contract_services do |t|
      t.integer :contract_id
      t.integer :organisation_service_id
      t.datetime :at

      t.timestamps
    end
  end
end
