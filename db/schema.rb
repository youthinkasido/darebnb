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

ActiveRecord::Schema.define(version: 2019_07_29_195328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created", null: false
    t.datetime "modified", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_date", null: false
    t.datetime "end_date", null: false
    t.integer "num_guests", null: false
    t.integer "spot_id", null: false
    t.integer "booker_id", null: false
    t.integer "owner_id", null: false
    t.integer "price_per_day"
    t.index ["owner_id"], name: "index_bookings_on_owner_id"
    t.index ["spot_id"], name: "index_bookings_on_spot_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "reviewer_id", null: false
    t.text "comment", null: false
    t.integer "rating", null: false
    t.datetime "created", null: false
    t.datetime "modified", null: false
  end

  create_table "spot_amenities", force: :cascade do |t|
    t.integer "spot_id", null: false
    t.integer "amenity_id", null: false
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

end