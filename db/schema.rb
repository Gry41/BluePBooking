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

ActiveRecord::Schema.define(version: 20180821233509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities_rents", id: false, force: :cascade do |t|
    t.bigint "facility_id", null: false
    t.bigint "rent_id", null: false
    t.index ["facility_id"], name: "index_facilities_rents_on_facility_id"
    t.index ["rent_id"], name: "index_facilities_rents_on_rent_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_rents", id: false, force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "rent_id", null: false
    t.index ["language_id"], name: "index_languages_rents_on_language_id"
    t.index ["rent_id"], name: "index_languages_rents_on_rent_id"
  end

  create_table "languages_taxis", id: false, force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "taxi_id", null: false
    t.index ["language_id"], name: "index_languages_taxis_on_language_id"
    t.index ["taxi_id"], name: "index_languages_taxis_on_taxi_id"
  end

  create_table "languages_tours", id: false, force: :cascade do |t|
    t.bigint "language_id", null: false
    t.bigint "tour_id", null: false
    t.index ["language_id"], name: "index_languages_tours_on_language_id"
    t.index ["tour_id"], name: "index_languages_tours_on_tour_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_images", force: :cascade do |t|
    t.bigint "rent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.index ["rent_id"], name: "index_rent_images_on_rent_id"
  end

  create_table "rents", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "rooms"
    t.integer "bathrooms"
    t.decimal "dbl_price"
    t.decimal "tpl_price"
    t.string "qpl_price"
    t.string "home"
    t.decimal "X"
    t.decimal "Y"
    t.string "features"
    t.boolean "tripadvisor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.integer "visits", default: 0
    t.index ["location_id"], name: "index_rents_on_location_id"
    t.index ["visits"], name: "index_rents_on_visits"
  end

  create_table "rents_services", id: false, force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "rent_id", null: false
    t.index ["rent_id"], name: "index_rents_services_on_rent_id"
    t.index ["service_id"], name: "index_rents_services_on_service_id"
  end

  create_table "rules", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxi_images", force: :cascade do |t|
    t.bigint "taxi_sevice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.index ["taxi_sevice_id"], name: "index_taxi_images_on_taxi_sevice_id"
  end

  create_table "taxi_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "taxi_sevices", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tour_images", force: :cascade do |t|
    t.bigint "tour_service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.index ["tour_service_id"], name: "index_tour_images_on_tour_service_id"
  end

  create_table "tour_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "tour_services", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "rent_images", "rents"
  add_foreign_key "taxi_images", "taxi_sevices"
  add_foreign_key "tour_images", "tour_services"
end
