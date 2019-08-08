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

ActiveRecord::Schema.define(version: 2019_08_08_163710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.string "start_date", null: false
    t.string "end_date", null: false
    t.integer "num_guests", null: false
    t.integer "spot_id", null: false
    t.integer "booker_id", null: false
    t.integer "owner_id", null: false
    t.string "price_per_day", null: false
    t.index ["owner_id"], name: "index_bookings_on_owner_id"
    t.index ["spot_id"], name: "index_bookings_on_spot_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "reviewer_id", null: false
    t.text "comment", null: false
    t.integer "rating", null: false
  end

  create_table "spot_amenities", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "amenity_id", null: false
    t.string "name"
  end

  create_table "spots", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "max_guests", null: false
    t.string "room_type", null: false
    t.string "address", null: false
    t.string "country", null: false
    t.string "state", null: false
    t.string "city", null: false
    t.string "neighborhood", null: false
    t.integer "bedrooms", null: false
    t.integer "bathrooms", null: false
    t.integer "rating", null: false
    t.string "spot_type", null: false
    t.datetime "modified"
    t.integer "owner_id", null: false
    t.string "cost_per_night", null: false
    t.float "lat", null: false
    t.float "lng", null: false
    t.string "amenities", default: [], array: true
    t.string "image_urls", default: [], array: true
    t.index ["name"], name: "index_spots_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
