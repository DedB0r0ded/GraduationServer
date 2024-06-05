class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :contractor_user_id
      t.integer :customer_user_id
      t.integer :contractor_id
      t.integer :customer_id
      t.integer :contract_id
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
