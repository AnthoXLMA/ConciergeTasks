# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_10_20_192330) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activity_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activity_bookings", force: :cascade do |t|
    t.date "dayofactivity"
    t.integer "numberofpax"
    t.string "guestname"
    t.string "activityname"
    t.text "description"
    t.text "addons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "starts_at"
    t.string "ends_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "concierge_id", null: false
    t.bigint "restaurant_id", null: false
    t.index ["concierge_id"], name: "index_bookings_on_concierge_id"
    t.index ["restaurant_id"], name: "index_bookings_on_restaurant_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "segment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concierges", force: :cascade do |t|
    t.string "firstname"
    t.text "lastname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "concierge_id"
    t.index ["concierge_id"], name: "index_guests_on_concierge_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "title"
    t.bigint "location_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_hotels_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "title"
    t.date "day"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_bookings", force: :cascade do |t|
    t.date "day"
    t.integer "numberofguest"
    t.string "guestname"
    t.string "typeofreservation"
    t.time "tablebookingtime"
    t.string "restaurantname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "concierge_id", null: false
    t.bigint "restaurant_id", null: false
    t.index ["concierge_id"], name: "index_restaurant_bookings_on_concierge_id"
    t.index ["restaurant_id"], name: "index_restaurant_bookings_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "restaurant_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id", null: false
    t.string "city"
    t.index ["location_id"], name: "index_restaurants_on_location_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "taskType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transfer_bookings", force: :cascade do |t|
    t.date "day"
    t.integer "numberofpax"
    t.integer "numberofpiecesofluggage"
    t.string "pickuplocalplace"
    t.float "dropofflocalplace"
    t.string "pickuptime"
    t.string "typeofvehicle"
    t.time "eta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "concierges"
  add_foreign_key "bookings", "restaurants"
  add_foreign_key "guests", "concierges"
  add_foreign_key "hotels", "locations"
  add_foreign_key "restaurant_bookings", "concierges"
  add_foreign_key "restaurant_bookings", "restaurants"
  add_foreign_key "restaurants", "locations"
end
