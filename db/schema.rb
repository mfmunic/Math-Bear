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

ActiveRecord::Schema[8.1].define(version: 2026_02_13_221116) do
  create_table "sessions", force: :cascade do |t|
    t.boolean "addition", default: true
    t.integer "card_count_addition"
    t.integer "card_count_division"
    t.integer "card_count_multiplication"
    t.integer "card_count_subtraction"
    t.integer "card_count_total", default: 20
    t.datetime "created_at", null: false
    t.boolean "division", default: false
    t.integer "max_input", default: 20
    t.integer "min_input", default: 0
    t.boolean "multiplication", default: false
    t.string "session_type", default: "count"
    t.boolean "subtraction", default: false
    t.integer "time_minutes", default: 5
    t.datetime "updated_at", null: false
  end
end
