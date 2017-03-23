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

ActiveRecord::Schema.define(version: 20170319012810) do

  create_table "favours", force: :cascade do |t|
    t.integer  "juan_id"
    t.integer  "runner_id"
    t.string   "description"
    t.decimal  "price"
    t.boolean  "is_available"
    t.time     "time_availfrom"
    t.time     "time_availto"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "skill_id"
  end

  create_table "juans", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "address"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "skill"
    t.time     "time_availfrom"
    t.time     "time_availto"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "username"
    t.string   "password"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "skill_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
