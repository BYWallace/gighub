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

ActiveRecord::Schema.define(version: 20140527152618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: true do |t|
    t.integer  "seatgeek_id"
    t.string   "title",          null: false
    t.datetime "datetime_local"
    t.integer  "lowest_price"
    t.float    "popularity"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["seatgeek_id"], name: "index_events_on_seatgeek_id", unique: true, using: :btree

  create_table "venues", force: true do |t|
    t.integer  "seatgeek_id"
    t.string   "name",        null: false
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "postal_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venues", ["seatgeek_id"], name: "index_venues_on_seatgeek_id", unique: true, using: :btree

end
