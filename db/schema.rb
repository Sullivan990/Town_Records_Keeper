
ActiveRecord::Schema.define(version: 20140415153714) do

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

end

