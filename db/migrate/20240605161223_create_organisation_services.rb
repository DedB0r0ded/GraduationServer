class CreateOrganisationServices < ActiveRecord::Migration[7.1]
  def change
    create_table :organisation_services do |t|
      t.integer :service_id
      t.integer :item_id
      t.integer :organisation_id
      t.integer :price

      t.timestamps
    end
  end
end
