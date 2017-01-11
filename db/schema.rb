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

ActiveRecord::Schema.define(version: 20170109225321) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "district"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.integer  "inscription_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["inscription_id"], name: "index_addresses_on_inscription_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.integer  "inscription_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["inscription_id"], name: "index_emails_on_inscription_id"
  end

  create_table "inscriptions", force: :cascade do |t|
    t.string   "full_name"
    t.date     "birthday"
    t.string   "mother"
    t.string   "father"
    t.string   "sex"
    t.string   "shirt_size"
    t.string   "baptism"
    t.string   "first_eucharist"
    t.string   "chrism"
    t.string   "follow_me"
    t.string   "revive"
    t.string   "other_meeting"
    t.string   "pastoral"
    t.string   "health_problem"
    t.string   "hp_describe"
    t.string   "medication"
    t.datetime "medication_time"
    t.text     "rmk"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "team_id"
    t.string   "coordinator"
    t.string   "couple_support"
    t.string   "holy_mass"
    t.index ["team_id"], name: "index_inscriptions_on_team_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string   "phone"
    t.string   "whatsapp"
    t.integer  "inscription_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["inscription_id"], name: "index_phones_on_inscription_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
