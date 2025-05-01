class CreateTimeEntryPlans < ActiveRecord::Migration[8.0]
  def change
    create_table :time_entry_plans do |t|
      t.references :time_entry, null: false, foreign_key: true
      t.references :time_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
