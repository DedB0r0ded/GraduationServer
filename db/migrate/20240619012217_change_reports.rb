class ChangeReports < ActiveRecord::Migration[7.1]
  def change
    remove_column :reports, :contractor_user_id, :bigint
    remove_column :reports, :customer_user_id, :bigint
    remove_column :reports, :contractor_id, :bigint
    remove_column :reports, :customer_id, :bigint

    add_column :reports, :contractor_reg_key_id, :bigint
    add_column :reports, :customer_reg_key_id, :bigint
  end
end
