class CreateContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :contracts do |t|
      t.integer :parent_id
      t.boolean :continuous
      t.boolean :urgent
      t.string :subject
      t.string :pdf_path
      t.integer :total_cost
      t.integer :currency
      t.integer :date_info_id
      t.integer :customer_id
      t.integer :contractor_id
      
      t.timestamps
    end
  end
end
