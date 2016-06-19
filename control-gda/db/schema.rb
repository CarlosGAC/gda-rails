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

ActiveRecord::Schema.define(version: 20160619213221) do

  create_table "affiliates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assistances", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.string   "company"
    t.string   "record_number"
    t.string   "company_user"
    t.integer  "id_service"
    t.integer  "id_affiliate"
    t.string   "affiliate_plays"
    t.string   "company_pays"
    t.time     "contact_time"
    t.time     "end_time"
    t.string   "who_quoted"
    t.text     "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "brand"
    t.string   "type"
    t.string   "color"
    t.string   "licence_plates"
    t.string   "model"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.date     "date"
    t.time     "hour"
    t.string   "client"
    t.integer  "id_car"
    t.integer  "id_truck"
    t.integer  "id_operator"
    t.string   "ubication"
    t.string   "destiny"
    t.string   "inventary_num"
    t.string   "keys_num"
    t.integer  "id_assistance"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "type"
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
