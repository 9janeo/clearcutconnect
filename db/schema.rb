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

ActiveRecord::Schema[7.0].define(version: 2018_06_29_181156) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultants", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "email"
    t.string "twitter_handle"
    t.string "facebook_url"
    t.string "instagram_handle"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
  end

  create_table "estimates", force: :cascade do |t|
    t.string "type"
    t.datetime "start", precision: nil
    t.datetime "end", precision: nil
    t.string "owner"
    t.string "email"
    t.string "phone"
    t.text "notes"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "image"
    t.integer "user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.string "ordername"
    t.integer "ordernumber"
    t.boolean "complete"
    t.text "servicelist"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "roles_users", force: :cascade do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "code"
    t.integer "number"
    t.integer "cost"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.string "text"
    t.string "created_at"
    t.string "user_id"
    t.string "user_name"
    t.string "user_screen_name"
    t.string "user_image_url"
    t.string "tweet_id"
    t.datetime "tweet_created_at", precision: nil
    t.bigint "keyword_id"
    t.index ["keyword_id", "created_at"], name: "index_tweets_on_keyword_id_and_created_at"
    t.index ["keyword_id"], name: "index_tweets_on_keyword_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "type"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
