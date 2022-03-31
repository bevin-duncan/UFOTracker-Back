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

ActiveRecord::Schema.define(version: 2022_03_29_201143) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sighting_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sighting_id"], name: "index_favorites_on_sighting_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "sightings", force: :cascade do |t|
    t.string "summary"
    t.string "city"
    t.string "state"
    t.datetime "date_time"
    t.string "shape"
    t.float "city_latitude"
    t.float "city_longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
