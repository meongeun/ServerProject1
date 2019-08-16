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

ActiveRecord::Schema.define(version: 2019_08_14_152535) do

  create_table "ads", force: :cascade do |t|
    t.string "kind"
    t.string "name"
    t.string "menu"
    t.integer "price"
    t.datetime "starttime"
    t.datetime "endtime"
    t.datetime "startday"
    t.datetime "endday"
    t.string "repeat"
    t.integer "startdiscount"
    t.integer "timegap"
    t.integer "discountgap"
    t.integer "startnum"
    t.integer "plusone"
    t.integer "plustwo"
    t.integer "store_id"
    t.integer "storeuser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_ads_on_store_id"
    t.index ["storeuser_id"], name: "index_ads_on_storeuser_id"
  end

  create_table "customerusers", force: :cascade do |t|
    t.string "pw"
    t.string "email"
    t.string "phone"
    t.string "residence"
    t.string "location"
    t.integer "age"
    t.boolean "gender"
    t.string "image"
    t.boolean "alarm"
    t.string "unique"
    t.integer "ad_id"
    t.integer "store_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_customerusers_on_ad_id"
    t.index ["store_id"], name: "index_customerusers_on_store_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "store_id"
    t.float "rate"
    t.text "content"
    t.integer "customeruser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customuser_id"], name: "index_reviews_on_customuser_id"
    t.index ["store_id"], name: "index_reviews_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.integer "storeuser_id"
    t.integer "star"
    t.string "name"
    t.string "location"
    t.string "time"
    t.string "menu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["storeuser_id"], name: "index_stores_on_storeuser_id"
  end

  create_table "storeusers", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.string "pw"
    t.string "target"
    t.integer "age"
    t.boolean "gender"
    t.string "image"
    t.integer "store_id"
    t.integer "ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_storeusers_on_ad_id"
    t.index ["store_id"], name: "index_storeusers_on_store_id"
  end

  create_table "warns", force: :cascade do |t|
    t.integer "ad_id"
    t.text "content"
    t.integer "customuser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_warns_on_ad_id"
    t.index ["customuser_id"], name: "index_warns_on_customuser_id"
  end

end
