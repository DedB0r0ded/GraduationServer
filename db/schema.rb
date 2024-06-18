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

ActiveRecord::Schema[7.1].define(version: 2024_06_18_223152) do
  create_table "components", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "serial_number"
    t.date "manufacture_year"
    t.bigint "manufacturer_id"
    t.string "pic_route"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_maintenance_items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "component_id"
    t.bigint "contract_id"
    t.bigint "maintenance_date_info_id"
    t.bigint "replacement_date_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "contract_id"
    t.bigint "organisation_service_id"
    t.datetime "at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "parent_id"
    t.boolean "continuous"
    t.boolean "urgent"
    t.string "subject"
    t.string "pdf_path"
    t.integer "total_cost"
    t.integer "currency"
    t.bigint "date_info_id"
    t.bigint "customer_id"
    t.bigint "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "date_infos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "last"
    t.date "next"
    t.integer "frequency_days"
    t.integer "frequency_months"
    t.integer "frequency_years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "serial_number"
    t.date "manufacture_year"
    t.bigint "manufacturer_id"
    t.string "pic_route"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "component_id"
    t.bigint "facility_id"
    t.bigint "default_date_info_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "country"
    t.text "description"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organisation_services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "service_id"
    t.bigint "item_id"
    t.bigint "organisation_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "privileges", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "alias_en"
    t.string "alias_ru"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reg_key_privileges", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "reg_key_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "privilege_id"
  end

  create_table "reg_keys", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "value"
    t.bigint "organisation_id"
    t.bigint "user_id"
    t.integer "state"
    t.integer "power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "contractor_user_id"
    t.integer "customer_user_id"
    t.integer "contractor_id"
    t.integer "customer_id"
    t.integer "contract_id"
    t.string "subject"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "facility_id"
    t.datetime "app_created_at"
    t.integer "rating"
    t.string "subject"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "default_item_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "creator_id"
    t.bigint "organisation_id"
    t.boolean "completed"
    t.string "subject"
    t.text "description"
    t.datetime "app_created_at"
    t.datetime "app_expires_at"
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
