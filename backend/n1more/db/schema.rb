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

ActiveRecord::Schema.define(version: 2018_07_30_221100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aggression_details", force: :cascade do |t|
    t.bigint "victim_id"
    t.date "aggression_date"
    t.time "aggression_time"
    t.string "mechanism"
    t.string "scene"
    t.text "proof_file"
    t.float "latitude_report"
    t.float "longitude_report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["victim_id"], name: "index_aggression_details_on_victim_id"
  end

  create_table "attention_centers", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "phone_number"
    t.text "picture"
    t.string "schedule"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.bigint "attention_center_id"
    t.string "institution_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attention_center_id"], name: "index_institutions_on_attention_center_id"
  end

  create_table "other_aggressions", force: :cascade do |t|
    t.bigint "aggression_detail_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aggression_detail_id"], name: "index_other_aggressions_on_aggression_detail_id"
  end

  create_table "perpetrators", force: :cascade do |t|
    t.bigint "aggression_detail_id"
    t.integer "age"
    t.string "name"
    t.string "gender"
    t.string "relationship"
    t.boolean "live_together"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aggression_detail_id"], name: "index_perpetrators_on_aggression_detail_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id"
    t.text "boy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "sexual_aggressions", force: :cascade do |t|
    t.bigint "aggression_detail_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aggression_detail_id"], name: "index_sexual_aggressions_on_aggression_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "victims", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.string "document_type"
    t.string "document_number"
    t.string "attendant_name"
    t.string "attendant_phone_number"
    t.string "sexual_orientation"
    t.string "district"
    t.text "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aggression_details", "victims"
  add_foreign_key "institutions", "attention_centers"
  add_foreign_key "other_aggressions", "aggression_details"
  add_foreign_key "perpetrators", "aggression_details"
  add_foreign_key "posts", "users"
  add_foreign_key "sexual_aggressions", "aggression_details"
end
