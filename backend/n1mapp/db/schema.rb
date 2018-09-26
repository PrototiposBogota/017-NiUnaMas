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

ActiveRecord::Schema.define(version: 2018_08_22_033807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aggression_details", force: :cascade do |t|
    t.bigint "user_id"
    t.string "perpetrator_name"
    t.integer "perpetrator_age"
    t.string "perpetrator_gender"
    t.string "relatioship"
    t.boolean "live_together"
    t.date "aggression_date"
    t.time "aggression_time"
    t.string "mechanism"
    t.string "scene"
    t.text "proof_file"
    t.float "latitude_report"
    t.float "longitude_report"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_aggression_details_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.bigint "help_centers_id"
    t.string "institution_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["help_centers_id"], name: "index_categories_on_help_centers_id"
  end

  create_table "help_centers", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.string "phone_number"
    t.string "picture"
    t.string "schedule"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_aggressions", force: :cascade do |t|
    t.bigint "aggression_detail_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aggression_detail_id"], name: "index_other_aggressions_on_aggression_detail_id"
  end

  create_table "sexual_aggressions", force: :cascade do |t|
    t.bigint "aggression_detail_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aggression_detail_id"], name: "index_sexual_aggressions_on_aggression_detail_id"
  end

  create_table "tabla1s", force: :cascade do |t|
    t.string "articulo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "surname"
    t.string "phone_number"
    t.string "document_type"
    t.string "document_number"
    t.string "attendant_name"
    t.string "attendant_phone_number"
    t.string "sexual_orientation"
    t.string "district"
    t.string "picture"
    t.boolean "admin_user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "women", force: :cascade do |t|
    t.string "dato1"
    t.string "dato2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aggression_details", "users"
  add_foreign_key "categories", "help_centers", column: "help_centers_id"
  add_foreign_key "other_aggressions", "aggression_details"
  add_foreign_key "sexual_aggressions", "aggression_details"
end
