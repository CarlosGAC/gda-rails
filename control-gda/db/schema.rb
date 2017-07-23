# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170723204336) do

  create_table "assistances", force: :cascade do |t|
    t.string   "record_number"
    t.string   "company_user"
    t.string   "affiliate_name"
    t.string   "affiliate_pays"
    t.string   "company_pays"
    t.time     "contact_time"
    t.time     "end_time"
    t.string   "who_quoted"
    t.text     "comments"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "authority"
    t.string   "serial"
    t.string   "maneuver"
    t.string   "service_type"
    t.string   "number"
    t.string   "departure_place"
    t.string   "sinister_place"
    t.string   "driver_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lastname"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name"
    t.integer  "kilometers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.date     "date"
    t.time     "hour"
    t.string   "client"
    t.string   "ubication"
    t.string   "destiny"
    t.string   "inventary_num"
    t.string   "keys_num"
    t.string   "brand"
    t.string   "car_type"
    t.string   "color"
    t.string   "licence_plates"
    t.string   "model"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "operator_id"
    t.integer  "truck_id"
    t.integer  "assistance_id"
    t.integer  "inventory_id"
  end

  add_index "services", ["assistance_id"], name: "index_services_on_assistance_id"
  add_index "services", ["inventory_id"], name: "index_services_on_inventory_id"
  add_index "services", ["operator_id"], name: "index_services_on_operator_id"
  add_index "services", ["truck_id"], name: "index_services_on_truck_id"

  create_table "trucks", force: :cascade do |t|
    t.string   "classification"
    t.string   "number"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
