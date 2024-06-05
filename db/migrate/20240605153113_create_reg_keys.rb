class CreateRegKeys < ActiveRecord::Migration[7.1]
  def change
    create_table :reg_keys do |t|
      t.string :value
      t.integer :organisation_id
      t.integer :user_id
      t.integer :state
      t.integer :power

      t.timestamps
    end

    create_table :reg_key_privileges do |t|
      t.integer :reg_key_id

      t.boolean :task_create_org
      t.boolean :task_create_self
      t.boolean :task_delete_org
      t.boolean :task_delete_self
      t.boolean :task_update_org
      t.boolean :task_update_self
      t.boolean :task_assign_org
      t.boolean :task_assign_self
      t.boolean :task_read_org
      t.boolean :task_read_self
      t.boolean :task_delete_ignore_power
      t.boolean :task_update_ignore_power
      t.boolean :task_read_ignore_power
      t.boolean :task_assign_ignore_power
      t.boolean :organisation_delete
      t.boolean :organisation_service_create
      t.boolean :organisation_service_read
      t.boolean :organisation_service_delete
      t.boolean :reg_key_gen
      t.boolean :reg_key_recall
      t.boolean :reg_key_grant_privileges
      t.boolean :contract_send_request
      t.boolean :contract_conclude
      t.boolean :contract_recall
      t.boolean :contract_add_service
      t.boolean :contract_delete_service
      t.boolean :contract_add_mnt_item
      t.boolean :contract_delete_mnt_item
      t.boolean :contract_add_service_concluded
      t.boolean :contract_delete_service_concluded
      t.boolean :contract_add_mnt_item_concluded
      t.boolean :contract_delete_mnt_item_concluded
      t.boolean :report_create
      t.boolean :report_delete_org
      t.boolean :report_delete_self
      t.boolean :report_update_org
      t.boolean :report_update_self
      t.boolean :report_read_org
      t.boolean :report_read_self
      t.boolean :manufacturer_create
      t.boolean :manufacturer_read
      t.boolean :manufacturer_update
      t.boolean :manufacturer_delete
      t.boolean :g_facility_create
      t.boolean :g_facility_read
      t.boolean :g_facility_update
      t.boolean :g_facility_delete
      t.boolean :g_component_create
      t.boolean :g_component_read
      t.boolean :g_component_update
      t.boolean :g_component_delete
      t.boolean :g_item_create
      t.boolean :g_item_read
      t.boolean :g_item_delete
      t.boolean :g_service_create
      t.boolean :g_service_read
      t.boolean :g_service_delete

      t.timestamps
    end
  end
end
