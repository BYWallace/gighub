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

ActiveRecord::Schema.define(version: 20140529135858) do

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
    t.text     "photo_url"
    t.text     "spotify_url"
  end

  add_index "events", ["seatgeek_id"], name: "index_events_on_seatgeek_id", unique: true, using: :btree

  create_table "favorites", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

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
