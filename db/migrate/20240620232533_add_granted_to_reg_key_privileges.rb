class AddGrantedToRegKeyPrivileges < ActiveRecord::Migration[7.1]
  def change
    add_column :reg_key_privileges, :granted, :bool
  end
end
