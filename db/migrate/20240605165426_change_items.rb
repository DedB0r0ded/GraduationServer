class ChangeItems < ActiveRecord::Migration[7.1]
  def up
    change_column :components, :manufacturer_id, :bigint

    change_column :contract_maintenance_items, :component_id, :bigint
    change_column :contract_maintenance_items, :contract_id, :bigint
    change_column :contract_maintenance_items, :maintenance_date_info_id, :bigint
    change_column :contract_maintenance_items, :replacement_date_info_id, :bigint

    change_column :contracts, :parent_id, :bigint
    change_column :contracts, :date_info_id, :bigint
    change_column :contracts, :customer_id, :bigint
    change_column :contracts, :contractor_id, :bigint

    change_column :contract_services, :contract_id, :bigint
    change_column :contract_services, :organisation_service_id, :bigint

    change_column :facilities, :manufacturer_id, :bigint

    change_column :items, :component_id, :bigint
    change_column :items, :facility_id, :bigint
    change_column :items, :default_date_info_id, :bigint
  end

  def down
    change_column :components, :manufacturer_id, :integer

    change_column :contract_maintenance_items, :component_id, :integer
    change_column :contract_maintenance_items, :contract_id, :integer
    change_column :contract_maintenance_items, :maintenance_date_info_id, :integer
    change_column :contract_maintenance_items, :replacement_date_info_id, :integer

    change_column :contracts, :parent_id, :integer
    change_column :contracts, :date_info_id, :integer
    change_column :contracts, :customer_id, :integer
    change_column :contracts, :contractor_id, :integer

    change_column :contract_services, :contract_id, :integer
    change_column :contract_services, :organisation_service_id, :integer

    change_column :facilities, :manufacturer_id, :integer

    change_column :items, :component_id, :integer
    change_column :items, :facility_id, :integer
    change_column :items, :default_date_info_id, :integer
  end
end
