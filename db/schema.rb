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

ActiveRecord::Schema.define(version: 20160221090905) do

  create_table "fights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "winner"
  end

  create_table "fights_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fight_id"
  end

  add_index "fights_users", ["fight_id"], name: "index_fights_users_on_fight_id"
  add_index "fights_users", ["user_id"], name: "index_fights_users_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "description"
    t.integer  "midichlorians"
    t.integer  "level"
    t.integer  "lightsaber"
    t.string   "force"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "exp",           default: 0
    t.string   "picture"
  end

end
