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

ActiveRecord::Schema[7.0].define(version: 2022_04_03_142834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "apartement"
    t.string "building"
    t.string "street"
    t.string "state"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "color"
    t.integer "seats"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "transmission"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "primary"
    t.string "home"
    t.string "work"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "address_id", null: false
    t.bigint "phone_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_profiles_on_address_id"
    t.index ["phone_id"], name: "index_profiles_on_phone_id"
  end

  create_table "reqeusted_services", force: :cascade do |t|
    t.integer "user_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_reqeusted_services_on_service_id"
    t.index ["user_id"], name: "index_reqeusted_services_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transmissions", force: :cascade do |t|
    t.string "transmission_type"
    t.string "abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "cars", "users"
  add_foreign_key "phones", "users"
  add_foreign_key "profiles", "addresses"
  add_foreign_key "profiles", "phones"
  add_foreign_key "reqeusted_services", "services"
  add_foreign_key "reqeusted_services", "users"
end
