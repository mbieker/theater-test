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

ActiveRecord::Schema.define(version: 20140601210002) do

  create_table "event_dates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "event_id"
    t.date     "date"
    t.string   "location"
    t.integer  "vacant_seats"
    t.integer  "total_capacity"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.string   "artist"
    t.float    "price_full"
    t.float    "price_disc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "tickets", force: true do |t|
    t.integer  "event_date_id"
    t.boolean  "discount",      default: false
    t.boolean  "confirmed",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
