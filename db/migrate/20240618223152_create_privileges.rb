class CreatePrivileges < ActiveRecord::Migration[7.1]
  def change
    create_table :privileges do |t|
      t.string :name
      t.string :alias_en
      t.string :alias_ru

      t.timestamps
    end

    add_column :reg_key_privileges, :privilege_id, :bigint

    remove_column :reg_key_privileges, :task_create_org, :bool
    remove_column :reg_key_privileges, :task_create_self, :bool
    remove_column :reg_key_privileges, :task_delete_org, :bool
    remove_column :reg_key_privileges, :task_delete_self, :bool
    remove_column :reg_key_privileges, :task_update_org, :bool
    remove_column :reg_key_privileges, :task_update_self, :bool
    remove_column :reg_key_privileges, :task_assign_org, :bool
    remove_column :reg_key_privileges, :task_assign_self, :bool
    remove_column :reg_key_privileges, :task_read_org, :bool
    remove_column :reg_key_privileges, :task_read_self, :bool
    remove_column :reg_key_privileges, :task_delete_ignore_power, :bool
    remove_column :reg_key_privileges, :task_update_ignore_power, :bool
    remove_column :reg_key_privileges, :task_read_ignore_power, :bool
    remove_column :reg_key_privileges, :task_assign_ignore_power, :bool
    remove_column :reg_key_privileges, :organisation_delete, :bool
    remove_column :reg_key_privileges, :organisation_service_create, :bool
    remove_column :reg_key_privileges, :organisation_service_read, :bool
    remove_column :reg_key_privileges, :organisation_service_delete, :bool
    remove_column :reg_key_privileges, :reg_key_gen, :bool
    remove_column :reg_key_privileges, :reg_key_recall, :bool
    remove_column :reg_key_privileges, :reg_key_grant_privileges, :bool
    remove_column :reg_key_privileges, :contract_send_request, :bool
    remove_column :reg_key_privileges, :contract_conclude, :bool
    remove_column :reg_key_privileges, :contract_recall, :bool
    remove_column :reg_key_privileges, :contract_add_service, :bool
    remove_column :reg_key_privileges, :contract_delete_service, :bool
    remove_column :reg_key_privileges, :contract_add_mnt_item, :bool
    remove_column :reg_key_privileges, :contract_delete_mnt_item, :bool
    remove_column :reg_key_privileges, :contract_add_service_concluded, :bool
    remove_column :reg_key_privileges, :contract_delete_service_concluded, :bool
    remove_column :reg_key_privileges, :contract_add_mnt_item_concluded, :bool
    remove_column :reg_key_privileges, :contract_delete_mnt_item_concluded, :bool
    remove_column :reg_key_privileges, :report_create, :bool
    remove_column :reg_key_privileges, :report_delete_org, :bool
    remove_column :reg_key_privileges, :report_delete_self, :bool
    remove_column :reg_key_privileges, :report_update_org, :bool
    remove_column :reg_key_privileges, :report_update_self, :bool
    remove_column :reg_key_privileges, :report_read_org, :bool
    remove_column :reg_key_privileges, :report_read_self, :bool
    remove_column :reg_key_privileges, :manufacturer_create, :bool
    remove_column :reg_key_privileges, :manufacturer_read, :bool
    remove_column :reg_key_privileges, :manufacturer_update, :bool
    remove_column :reg_key_privileges, :manufacturer_delete, :bool
    remove_column :reg_key_privileges, :g_facility_create, :bool
    remove_column :reg_key_privileges, :g_facility_read, :bool
    remove_column :reg_key_privileges, :g_facility_update, :bool
    remove_column :reg_key_privileges, :g_facility_delete, :bool
    remove_column :reg_key_privileges, :g_component_create, :bool
    remove_column :reg_key_privileges, :g_component_read, :bool
    remove_column :reg_key_privileges, :g_component_update, :bool
    remove_column :reg_key_privileges, :g_component_delete, :bool
    remove_column :reg_key_privileges, :g_item_create, :bool
    remove_column :reg_key_privileges, :g_item_read, :bool
    remove_column :reg_key_privileges, :g_item_delete, :bool
    remove_column :reg_key_privileges, :g_service_create, :bool
    remove_column :reg_key_privileges, :g_service_read, :bool
    remove_column :reg_key_privileges, :g_service_delete, :bool
  end
end
