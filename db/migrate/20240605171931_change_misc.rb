class ChangeMisc < ActiveRecord::Migration[7.1]
  def up
    change_column :reviews, :user_id, :bigint
    change_column :reviews, :facility_id, :bigint

    change_column :services, :default_item_id, :bigint

    change_column :tasks, :user_id, :bigint
    change_column :tasks, :creator_id, :bigint
    change_column :tasks, :organisation_id, :bigint
  end

  def down
    change_column :reviews, :user_id, :integer
    change_column :reviews, :facility_id, :integer

    change_column :services, :default_item_id, :integer

    change_column :tasks, :user_id, :integer
    change_column :tasks, :creator_id, :integer
    change_column :tasks, :organisation_id, :integer
  end
end
