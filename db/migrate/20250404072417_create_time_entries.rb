class CreateTimeEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :time_entries do |t|
      t.references :user, null: false, foreign_key: true
      t.string :activity_name
      t.integer :duration_minutes
      t.date :activity_date

      t.timestamps
    end
  end
end
