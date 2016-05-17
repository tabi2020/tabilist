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

ActiveRecord::Schema.define(version: 20151115083551) do

  create_table "members", force: :cascade do |t|
    t.integer  "number",     null: false
    t.string   "name"
    t.string   "email"
    t.string   "loginname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plandetails", force: :cascade do |t|
    t.integer "plan_id",             null: false
    t.integer "spot_id",             null: false
    t.date    "plandatil_startdate"
    t.date    "plandatil_enddate"
    t.string  "plandetail_title",    null: false
    t.string  "plandetail_note",     null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "member_id",     null: false
    t.string  "plan_title",    null: false
    t.date    "plan_date",     null: false
    t.integer "plan_cost",     null: false
    t.integer "plan_showflag", null: false
  end

  create_table "prefdetails", force: :cascade do |t|
    t.integer "pref_id",          null: false
    t.string  "prefdetails_name", null: false
  end

  create_table "prefs", force: :cascade do |t|
    t.string "pref_name", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.integer "prefdetail_id", null: false
    t.string  "spot_name",     null: false
    t.integer "spottype_id",   null: false
    t.string  "spot_url",      null: false
    t.string  "spot_address",  null: false
    t.string  "spot_gps",      null: false
    t.string  "spot_note"
    t.string  "spot_phone"
    t.integer "spot_cost"
    t.string  "spot_startdt"
    t.string  "spot_closedt"
  end

end
