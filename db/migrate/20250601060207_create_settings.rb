class CreateSettings < ActiveRecord::Migration[8.0]
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.string :font
      t.string :font_size
      t.string :theme
      t.string :bg_color

      t.timestamps
    end
  end
end
