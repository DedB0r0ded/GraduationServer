class RemoveDefaultDateInfoIdFromItems < ActiveRecord::Migration[7.1]
  def change
    remove_column :items, :default_date_info_id, :bigint
  end
end
