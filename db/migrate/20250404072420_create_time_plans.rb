class CreateTimePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :time_plans do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :time_period
      t.datetime :time_plan_amount

      t.timestamps
    end
  end
end
