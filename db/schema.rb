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

ActiveRecord::Schema.define(version: 20151223182431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string   "email",                      null: false
    t.string   "phone",                      null: false
    t.string   "name"
    t.boolean  "verified",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "contacts", ["email"], name: "index_contacts_on_email", unique: true, using: :btree

  create_table "images", force: :cascade do |t|
    t.integer  "listing_id", null: false
    t.string   "source",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["listing_id"], name: "index_images_on_listing_id", using: :btree

  create_table "listings", force: :cascade do |t|
    t.string   "address",                      null: false
    t.float    "lat",                          null: false
    t.float    "lng",                          null: false
    t.integer  "rent",                         null: false
    t.integer  "bedrooms",                     null: false
    t.float    "bathrooms",                    null: false
    t.string   "description",                  null: false
    t.string   "listing_type",                 null: false
    t.date     "date_posted",                  null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "min_lease",                    null: false
    t.integer  "deposit",                      null: false
    t.boolean  "fee",          default: false
    t.boolean  "parking",      default: false
    t.boolean  "cats",         default: false
    t.boolean  "dogs",         default: false
    t.integer  "contact_id",                   null: false
  end

  add_index "listings", ["address"], name: "index_listings_on_address", unique: true, using: :btree
  add_index "listings", ["contact_id"], name: "index_listings_on_contact_id", using: :btree
  add_index "listings", ["date_posted"], name: "index_listings_on_date_posted", using: :btree
  add_index "listings", ["lat", "lng"], name: "index_listings_on_lat_and_lng", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "name",            null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree

end
