class CreateReports < ActiveRecord::Migration[8.0]
  def change
    create_table :reports do |t|
      t.string :name
      t.datetime :time_period

      t.timestamps
    end
  end
end
