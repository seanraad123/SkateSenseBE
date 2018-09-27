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

ActiveRecord::Schema.define(version: 2018_09_27_175606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "skate_spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skate_spot_id"], name: "index_bookmarks_on_skate_spot_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "skate_spot_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skate_spot_id"], name: "index_comments_on_skate_spot_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.integer "latitude"
    t.integer "longitude"
    t.string "description"
    t.bigint "skate_spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skate_spot_id"], name: "index_events_on_skate_spot_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "skate_spot_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skate_spot_id"], name: "index_likes_on_skate_spot_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "skate_spots", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "state"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "description"
    t.integer "bust_factor"
    t.string "photo"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "skatephoto"
    t.index ["user_id"], name: "index_skate_spots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookmarks", "skate_spots"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "comments", "skate_spots"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "skate_spots"
  add_foreign_key "likes", "skate_spots"
  add_foreign_key "likes", "users"
  add_foreign_key "skate_spots", "users"
end
