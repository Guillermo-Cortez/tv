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

ActiveRecord::Schema.define(version: 2021_12_13_051421) do

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "broadcasts", force: :cascade do |t|
    t.date "date"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "colours", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "garment_host_broadcasts", force: :cascade do |t|
    t.integer "garment_id", null: false
    t.integer "host_id", null: false
    t.integer "broadcast_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id", null: false
    t.index ["broadcast_id"], name: "index_garment_host_broadcasts_on_broadcast_id"
    t.index ["garment_id"], name: "index_garment_host_broadcasts_on_garment_id"
    t.index ["host_id"], name: "index_garment_host_broadcasts_on_host_id"
    t.index ["user_id"], name: "index_garment_host_broadcasts_on_user_id"
  end

  create_table "garments", force: :cascade do |t|
    t.string "description"
    t.integer "colour_id", null: false
    t.integer "type_of_garment_id", null: false
    t.integer "brand_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brand_id"], name: "index_garments_on_brand_id"
    t.index ["colour_id"], name: "index_garments_on_colour_id"
    t.index ["type_of_garment_id"], name: "index_garments_on_type_of_garment_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.boolean "sex"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "type_of_garments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "garment_host_broadcasts", "broadcasts"
  add_foreign_key "garment_host_broadcasts", "garments"
  add_foreign_key "garment_host_broadcasts", "hosts"
  add_foreign_key "garment_host_broadcasts", "users"
  add_foreign_key "garments", "brands"
  add_foreign_key "garments", "colours"
  add_foreign_key "garments", "type_of_garments"
end
