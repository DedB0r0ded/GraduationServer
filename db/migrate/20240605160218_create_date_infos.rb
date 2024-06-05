class CreateDateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :date_infos do |t|
      t.date :last
      t.date :next
      t.integer :frequency_days
      t.integer :frequency_months
      t.integer :frequency_years

      t.timestamps
    end
  end
end
