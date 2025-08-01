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

ActiveRecord::Schema[8.0].define(version: 2025_08_01_181210) do
  create_table "contract_years", force: :cascade do |t|
    t.integer "contract_id", null: false
    t.integer "season_id", null: false
    t.integer "amount"
    t.boolean "waived", default: false
    t.boolean "two_way", default: false
    t.string "option_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_years_on_contract_id"
    t.index ["season_id"], name: "index_contract_years_on_season_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "team_id", null: false
    t.integer "start_season_id", null: false
    t.integer "end_season_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_season_id"], name: "index_contracts_on_end_season_id"
    t.index ["player_id"], name: "index_contracts_on_player_id"
    t.index ["start_season_id"], name: "index_contracts_on_start_season_id"
    t.index ["team_id"], name: "index_contracts_on_team_id"
  end

  create_table "managers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "approved"
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_managers_on_team_id"
    t.index ["user_id"], name: "index_managers_on_user_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.string "height"
    t.integer "weight"
    t.date "birthdate"
    t.integer "rating"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "start_year"
    t.integer "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
    t.string "city"
    t.integer "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_teams_on_manager_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "discord_id"
    t.string "username"
    t.string "avatar"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contract_years", "contracts"
  add_foreign_key "contract_years", "seasons"
  add_foreign_key "contracts", "players"
  add_foreign_key "contracts", "seasons", column: "end_season_id"
  add_foreign_key "contracts", "seasons", column: "start_season_id"
  add_foreign_key "contracts", "teams"
  add_foreign_key "managers", "teams"
  add_foreign_key "managers", "users"
  add_foreign_key "teams", "managers"
end
