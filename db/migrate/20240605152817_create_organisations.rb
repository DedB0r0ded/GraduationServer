class CreateOrganisations < ActiveRecord::Migration[7.1]
  def change
    create_table :organisations do |t|
      t.string :tid
      t.boolean :client_only
      t.string :name
      t.string :address
      t.string :fax
      t.string :bank_account
      t.boolean :active
      t.string :rcbic
      t.string :bank_name
      t.string :bank_address

      t.timestamps
    end
  end
end
