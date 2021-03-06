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

ActiveRecord::Schema.define(version: 20141106083820) do

  create_table "amenities", force: true do |t|
    t.string   "name"
    t.boolean  "presence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apartment_photos", force: true do |t|
    t.integer  "apartment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photos_file_name"
    t.string   "photos_content_type"
    t.integer  "photos_file_size"
    t.datetime "photos_updated_at"
  end

  add_index "apartment_photos", ["apartment_id"], name: "index_apartment_photos_on_apartment_id"

  create_table "apartment_showings", force: true do |t|
    t.integer  "apartment_id"
    t.integer  "showing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apartment_showings", ["apartment_id"], name: "index_apartment_showings_on_apartment_id"
  add_index "apartment_showings", ["showing_id"], name: "index_apartment_showings_on_showing_id"

  create_table "apartments", force: true do |t|
    t.string   "title"
    t.string   "neighborhood"
    t.integer  "price"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.text     "description"
    t.date     "move_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "broker_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "apartments", ["broker_id"], name: "index_apartments_on_broker_id"

  create_table "average_caches", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "avg",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brokers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.integer  "zip"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "brokers", ["email"], name: "index_brokers_on_email", unique: true
  add_index "brokers", ["reset_password_token"], name: "index_brokers_on_reset_password_token", unique: true

  create_table "overall_averages", force: true do |t|
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "overall_avg",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id"

  create_table "rating_caches", force: true do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"

  create_table "reviews", force: true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.integer  "broker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["broker_id"], name: "index_reviews_on_broker_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "showing_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "showing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "showing_users", ["showing_id"], name: "index_showing_users_on_showing_id"
  add_index "showing_users", ["user_id"], name: "index_showing_users_on_user_id"

  create_table "showings", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "duration"
    t.string   "location"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "apartment_id"
    t.integer  "broker_id"
    t.string   "geocoverage"
    t.string   "Found_Nest_Bonus"
    t.string   "bedroom"
    t.string   "lower_price_range"
    t.string   "upper_price_range"
    t.string   "bathrooms"
  end

  add_index "showings", ["apartment_id"], name: "index_showings_on_apartment_id"
  add_index "showings", ["broker_id"], name: "index_showings_on_broker_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
