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

ActiveRecord::Schema.define(version: 20180919142834) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_categories", force: :cascade do |t|
    t.integer  "profile_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_profile_categories_on_category_id"
    t.index ["profile_id"], name: "index_profile_categories_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "mobile",               limit: 8
    t.boolean  "status"
    t.integer  "age"
    t.boolean  "blocked"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "photo_1_file_name"
    t.string   "photo_1_content_type"
    t.integer  "photo_1_file_size"
    t.datetime "photo_1_updated_at"
    t.string   "photo_2_file_name"
    t.string   "photo_2_content_type"
    t.integer  "photo_2_file_size"
    t.datetime "photo_2_updated_at"
    t.string   "photo_3_file_name"
    t.string   "photo_3_content_type"
    t.integer  "photo_3_file_size"
    t.datetime "photo_3_updated_at"
    t.string   "photo_4_file_name"
    t.string   "photo_4_content_type"
    t.integer  "photo_4_file_size"
    t.datetime "photo_4_updated_at"
    t.string   "photo_5_file_name"
    t.string   "photo_5_content_type"
    t.integer  "photo_5_file_size"
    t.datetime "photo_5_updated_at"
    t.string   "photo_6_file_name"
    t.string   "photo_6_content_type"
    t.integer  "photo_6_file_size"
    t.datetime "photo_6_updated_at"
    t.string   "video_1_file_name"
    t.string   "video_1_content_type"
    t.integer  "video_1_file_size"
    t.datetime "video_1_updated_at"
    t.string   "video_2_file_name"
    t.string   "video_2_content_type"
    t.integer  "video_2_file_size"
    t.datetime "video_2_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
