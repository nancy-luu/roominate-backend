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

ActiveRecord::Schema.define(version: 2022_02_04_010008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conversations", force: :cascade do |t|
    t.string "header"
    t.bigint "user_id"
    t.bigint "user2_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user2_id"], name: "index_conversations_on_user2_id"
    t.index ["user_id"], name: "index_conversations_on_user_id"
  end

  create_table "listing_photos", force: :cascade do |t|
    t.bigint "listing_id", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_listing_photos_on_listing_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "location"
    t.integer "price"
    t.string "desc"
    t.bigint "user_id"
    t.bigint "listing_photos_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_photos_id"], name: "index_listings_on_listing_photos_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.bigint "conversation_id", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "message"
    t.integer "reviewer_id"
    t.bigint "user_review_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_review_id"], name: "index_reviews_on_user_review_id"
  end

  create_table "user_photos", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_photos_on_user_id"
  end

  create_table "user_reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "user_type"
    t.string "user_desc"
    t.string "user_location"
    t.integer "user_charge"
    t.bigint "user_photos_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_photos_id"], name: "index_users_on_user_photos_id"
  end

  add_foreign_key "conversations", "users"
  add_foreign_key "conversations", "users", column: "user2_id"
  add_foreign_key "listing_photos", "listings"
  add_foreign_key "messages", "conversations"
  add_foreign_key "user_photos", "users"
  add_foreign_key "user_reviews", "users"
end
