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

ActiveRecord::Schema.define(version: 20170403125158) do

  create_table "chats", force: true do |t|
    t.text     "content"
    t.integer  "user_post"
    t.integer  "user_rev"
    t.boolean  "post_read"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cleanings", force: true do |t|
    t.date     "date_check"
    t.integer  "user_shop_start"
    t.integer  "user_shop_end"
    t.integer  "cenzor"
    t.string   "flooring"
    t.string   "wc"
    t.string   "shelves"
    t.string   "storeroom"
    t.string   "territory"
    t.string   "household_eq"
    t.string   "orderinbox"
    t.string   "orderindoc"
    t.string   "displayofgoods"
    t.string   "price_tags"
    t.string   "tech_eq"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shop_id"
    t.integer  "user_id"
    t.string   "minuscheck"
    t.string   "ostzam"
  end

  add_index "cleanings", ["shop_id"], name: "index_cleanings_on_shop_id", using: :btree

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

  create_table "kladr", force: true do |t|
  end

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

  create_table "providers", force: true do |t|
    t.string   "name_short"
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "manager_fio"
    t.string   "manager_phone"
    t.string   "it_phone"
  end

  create_table "relationships", force: true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
  add_index "relationships", ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
  add_index "relationships", ["follower_id"], name: "index_relationships_on_follower_id", using: :btree

  create_table "requests", force: true do |t|
    t.integer  "department"
    t.integer  "reponsible"
    t.datetime "dedline"
    t.datetime "dateend"
    t.string   "subject"
    t.text     "descr"
    t.integer  "author"
    t.string   "doc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "bldg"
    t.string   "housing"
    t.string   "floor"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "id_hard"
    t.integer  "id_stock"
    t.string   "business_hours"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "street_id"
    t.integer  "town_id"
    t.integer  "provider_id"
  end

  create_table "stocks", force: true do |t|
    t.string   "name"
    t.integer  "amount"
    t.string   "availabil"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "streets", force: true do |t|
    t.string   "street_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "towns", force: true do |t|
    t.string   "town_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.string   "phone"
    t.string   "fio1"
    t.string   "fio2"
    t.string   "fio3"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "cleaning"
    t.string   "fio"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
