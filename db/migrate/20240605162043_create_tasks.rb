class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :creator_id
      t.integer :organisation_id
      t.boolean :completed
      t.string :subject
      t.text :description
      t.datetime :app_created_at
      t.datetime :app_expires_at

      t.timestamps
    end
  end
end
