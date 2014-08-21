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

ActiveRecord::Schema.define(version: 20140723042009) do

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coworkers", force: true do |t|
    t.string   "coworker_name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
    t.integer  "company_id"
  end

  add_index "coworkers", ["company_id"], name: "index_coworkers_on_company_id", using: :btree
  add_index "coworkers", ["department_id"], name: "index_coworkers_on_department_id", using: :btree

  create_table "departments", force: true do |t|
    t.string   "department_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardwares", force: true do |t|
    t.string   "inv_num"
    t.integer  "company_id"
    t.string   "by_doc"
    t.decimal  "by_price",      precision: 10, scale: 0
    t.string   "model_name"
    t.boolean  "notebook"
    t.string   "cpu"
    t.string   "memory"
    t.string   "hdd"
    t.string   "keyboard"
    t.string   "mouse"
    t.string   "speaker"
    t.date     "spisan"
    t.text     "spisan_txt"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id"
    t.integer  "coworker_id"
  end

  add_index "hardwares", ["company_id"], name: "index_hardwares_on_company_id", using: :btree
  add_index "hardwares", ["coworker_id"], name: "index_hardwares_on_coworker_id", using: :btree
  add_index "hardwares", ["department_id"], name: "index_hardwares_on_department_id", using: :btree

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "moniks", force: true do |t|
    t.string   "inv_num"
    t.string   "by_doc"
    t.decimal  "by_price",      precision: 9, scale: 2
    t.string   "monitor_name"
    t.integer  "diagonal"
    t.date     "spian"
    t.text     "spisan_txt"
    t.integer  "department_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moniks", ["company_id"], name: "index_moniks_on_company_id", using: :btree
  add_index "moniks", ["department_id"], name: "index_moniks_on_department_id", using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
