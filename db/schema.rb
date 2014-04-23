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

ActiveRecord::Schema.define(version: 20140422125447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "birth_records", force: true do |t|
    t.integer  "birth_month", null: false
    t.integer  "birth_day",   null: false
    t.integer  "birth_year",  null: false
    t.string   "first_name",  null: false
    t.string   "middle_name"
    t.string   "second_name"
    t.string   "last_name",   null: false
    t.string   "name_suffix"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "death_records", force: true do |t|
    t.integer  "month",       null: false
    t.integer  "day",         null: false
    t.integer  "year",        null: false
    t.string   "first_name",  null: false
    t.string   "middle_name"
    t.string   "second_name"
    t.string   "last_name",   null: false
    t.string   "maiden_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_suffix"
  end

end
