# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_23_104304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departements", force: :cascade do |t|
    t.string "departement_name"
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.index ["location_id"], name: "index_departements_on_location_id"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "employee_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.date "hire_date"
    t.string "job_id"
    t.integer "salary"
    t.integer "commision"
    t.integer "manager_id"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departement_id"
    t.index ["departement_id"], name: "index_employees_on_departement_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "street_address"
    t.integer "postal_code"
    t.string "city"
    t.string "state_province"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "departements", "locations"
  add_foreign_key "employees", "departements"
end
