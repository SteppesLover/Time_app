class CreateTimePlansReports < ActiveRecord::Migration[8.0]
  def change
    create_table :time_plans_reports do |t|
      t.references :time_plan, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
