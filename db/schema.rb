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

ActiveRecord::Schema[7.1].define(version: 2024_06_05_153113) do
  create_table "organisations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "tid"
    t.boolean "client_only"
    t.string "name"
    t.string "address"
    t.string "fax"
    t.string "bank_account"
    t.boolean "active"
    t.string "rcbic"
    t.string "bank_name"
    t.string "bank_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reg_key_privileges", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "reg_key_id"
    t.boolean "task_create_org"
    t.boolean "task_create_self"
    t.boolean "task_delete_org"
    t.boolean "task_delete_self"
    t.boolean "task_update_org"
    t.boolean "task_update_self"
    t.boolean "task_assign_org"
    t.boolean "task_assign_self"
    t.boolean "task_read_org"
    t.boolean "task_read_self"
    t.boolean "task_delete_ignore_power"
    t.boolean "task_update_ignore_power"
    t.boolean "task_read_ignore_power"
    t.boolean "task_assign_ignore_power"
    t.boolean "organisation_delete"
    t.boolean "organisation_service_create"
    t.boolean "organisation_service_read"
    t.boolean "organisation_service_delete"
    t.boolean "reg_key_gen"
    t.boolean "reg_key_recall"
    t.boolean "reg_key_grant_privileges"
    t.boolean "contract_send_request"
    t.boolean "contract_conclude"
    t.boolean "contract_recall"
    t.boolean "contract_add_service"
    t.boolean "contract_delete_service"
    t.boolean "contract_add_mnt_item"
    t.boolean "contract_delete_mnt_item"
    t.boolean "contract_add_service_concluded"
    t.boolean "contract_delete_service_concluded"
    t.boolean "contract_add_mnt_item_concluded"
    t.boolean "contract_delete_mnt_item_concluded"
    t.boolean "report_create"
    t.boolean "report_delete_org"
    t.boolean "report_delete_self"
    t.boolean "report_update_org"
    t.boolean "report_update_self"
    t.boolean "report_read_org"
    t.boolean "report_read_self"
    t.boolean "manufacturer_create"
    t.boolean "manufacturer_read"
    t.boolean "manufacturer_update"
    t.boolean "manufacturer_delete"
    t.boolean "g_facility_create"
    t.boolean "g_facility_read"
    t.boolean "g_facility_update"
    t.boolean "g_facility_delete"
    t.boolean "g_component_create"
    t.boolean "g_component_read"
    t.boolean "g_component_update"
    t.boolean "g_component_delete"
    t.boolean "g_item_create"
    t.boolean "g_item_read"
    t.boolean "g_item_delete"
    t.boolean "g_service_create"
    t.boolean "g_service_read"
    t.boolean "g_service_delete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reg_keys", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "value"
    t.integer "organisation_id"
    t.integer "user_id"
    t.integer "state"
    t.integer "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email"
    t.string "pwd_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
