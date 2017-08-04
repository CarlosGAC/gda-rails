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

ActiveRecord::Schema.define(version: 20170804024826) do

  create_table "assistances", force: :cascade do |t|
    t.string   "record_number",  limit: 255
    t.string   "company_user",   limit: 255
    t.string   "affiliate_name", limit: 255
    t.string   "affiliate_pays", limit: 255
    t.string   "company_pays",   limit: 255
    t.time     "contact_time"
    t.time     "end_time"
    t.string   "who_quoted",     limit: 255
    t.text     "comments",       limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "authority",       limit: 255
    t.string   "serial",          limit: 255
    t.string   "maneuver",        limit: 255
    t.string   "service_type",    limit: 255
    t.string   "number",          limit: 255
    t.string   "departure_place", limit: 255
    t.string   "sinister_place",  limit: 255
    t.string   "driver_name",     limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "lastname",   limit: 255
  end

  create_table "prices", force: :cascade do |t|
    t.string   "category",   limit: 255
    t.integer  "km_price",   limit: 4
    t.integer  "base_price", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "kilometers",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "booth_price", limit: 4
  end

  create_table "services", force: :cascade do |t|
    t.date     "date"
    t.time     "hour"
    t.string   "client",         limit: 255
    t.string   "ubication",      limit: 255
    t.string   "destiny",        limit: 255
    t.string   "keys_num",       limit: 255
    t.string   "brand",          limit: 255
    t.string   "car_type",       limit: 255
    t.string   "color",          limit: 255
    t.string   "licence_plates", limit: 255
    t.string   "model",          limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "operator_id",    limit: 4
    t.integer  "truck_id",       limit: 4
    t.integer  "assistance_id",  limit: 4
    t.integer  "inventory_id",   limit: 4
  end

  add_index "services", ["assistance_id"], name: "index_services_on_assistance_id", using: :btree
  add_index "services", ["inventory_id"], name: "index_services_on_inventory_id", using: :btree
  add_index "services", ["operator_id"], name: "index_services_on_operator_id", using: :btree
  add_index "services", ["truck_id"], name: "index_services_on_truck_id", using: :btree

  create_table "trucks", force: :cascade do |t|
    t.string   "classification", limit: 255
    t.string   "number",         limit: 255
    t.text     "description",    limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",   limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "services", "assistances"
  add_foreign_key "services", "inventories"
  add_foreign_key "services", "operators"
  add_foreign_key "services", "trucks"
end
