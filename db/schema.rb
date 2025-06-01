# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_01_060207) do
  create_table "messages", force: :cascade do |t|
    t.string "time_spend_type"
    t.string "activity"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "name"
    t.datetime "time_period"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.integer "user_id"
    t.string "font"
    t.string "font_size"
    t.string "theme"
    t.string "bg_color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "time_entries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "activity_name"
    t.integer "duration_minutes"
    t.date "activity_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["user_id"], name: "index_time_entries_on_user_id"
  end

  create_table "time_entry_plans", force: :cascade do |t|
    t.integer "time_entry_id", null: false
    t.integer "time_plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["time_entry_id"], name: "index_time_entry_plans_on_time_entry_id"
    t.index ["time_plan_id"], name: "index_time_entry_plans_on_time_plan_id"
  end

  create_table "time_entry_reports", force: :cascade do |t|
    t.integer "time_entry_id", null: false
    t.integer "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_time_entry_reports_on_report_id"
    t.index ["time_entry_id"], name: "index_time_entry_reports_on_time_entry_id"
  end

  create_table "time_plans", force: :cascade do |t|
    t.integer "user_id", null: false
    t.datetime "time_period"
    t.datetime "time_plan_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_time_plans_on_user_id"
  end

  create_table "time_plans_reports", force: :cascade do |t|
    t.integer "time_plan_id", null: false
    t.integer "report_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_time_plans_reports_on_report_id"
    t.index ["time_plan_id"], name: "index_time_plans_reports_on_time_plan_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "time_entries", "users"
  add_foreign_key "time_entry_plans", "time_entries"
  add_foreign_key "time_entry_plans", "time_plans"
  add_foreign_key "time_entry_reports", "reports"
  add_foreign_key "time_entry_reports", "time_entries"
  add_foreign_key "time_plans", "users"
  add_foreign_key "time_plans_reports", "reports"
  add_foreign_key "time_plans_reports", "time_plans"
end
