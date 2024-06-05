class ChangeRegKeys < ActiveRecord::Migration[7.1]
  def up
    change_column :reg_keys, :organisation_id, :bigint
    change_column :reg_keys, :user_id, :bigint
    change_column :reg_key_privileges, :reg_key_id, :bigint
  end

  def down
    change_column :reg_keys, :organisation_id, :integer
    change_column :reg_keys, :user_id, :integer
    change_column :reg_keys, :reg_key_id, :integer
  end
end
