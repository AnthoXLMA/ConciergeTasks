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

ActiveRecord::Schema[7.1].define(version: 2024_10_18_124127) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

end
