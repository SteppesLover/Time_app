class CreateMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.string :time_spend_type
      t.string :activity
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
