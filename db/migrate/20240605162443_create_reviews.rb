class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :facility_id
      t.datetime :app_created_at
      t.int :rating
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
