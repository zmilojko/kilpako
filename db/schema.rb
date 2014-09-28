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

ActiveRecord::Schema.define(version: 20140928080709) do

  create_table "competition_formats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "status",                default: "not_published"
    t.integer  "event_id"
    t.integer  "competition_format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competitors", force: true do |t|
    t.integer  "number"
    t.integer  "user_id",        null: false
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competitors", ["competition_id"], name: "index_competitors_on_competition_id"
  add_index "competitors", ["user_id"], name: "index_competitors_on_user_id"

  create_table "event_pages", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_pages", ["event_id"], name: "index_event_pages_on_event_id"

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "venue"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

  create_table "events_users", id: false, force: true do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "race_formats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", force: true do |t|
    t.string   "name"
    t.string   "status",         default: "not_started"
    t.string   "spots"
    t.integer  "competition_id"
    t.integer  "race_format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "time"
  end

  add_index "races", ["competition_id"], name: "index_races_on_competition_id"
  add_index "races", ["race_format_id"], name: "index_races_on_race_format_id"

  create_table "runs", force: true do |t|
    t.integer  "competitor_id"
    t.integer  "race_id"
    t.integer  "number"
    t.string   "verdict"
    t.decimal  "result_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "runs", ["competitor_id"], name: "index_runs_on_competitor_id"
  add_index "runs", ["race_id"], name: "index_runs_on_race_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nationality"
    t.string   "club"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
