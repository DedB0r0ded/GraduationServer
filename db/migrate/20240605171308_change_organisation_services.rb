class ChangeOrganisationServices < ActiveRecord::Migration[7.1]
  def up
    change_column :organisation_services, :service_id, :bigint
    change_column :organisation_services, :item_id, :bigint
    change_column :organisation_services, :organisation_id, :bigint
  end

  def down
    change_column :organisation_services, :service_id, :integer
    change_column :organisation_services, :item_id, :integer
    change_column :organisation_services, :organisation_id, :integer
  end
end
