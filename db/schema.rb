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

ActiveRecord::Schema.define(version: 20170904041813) do

  create_table "bitcoins", force: :cascade do |t|
    t.string   "cardamount"
    t.integer  "number"
    t.integer  "user_id"
    t.string   "bitcoinnumber"
    t.boolean  "terms"
    t.datetime "created_at",                                                  null: false
    t.datetime "updated_at",                                                  null: false
    t.boolean  "approved",                                    default: false
    t.string   "paymentoptions"
    t.decimal  "bitcointotal",      precision: 15, scale: 12
    t.decimal  "mobilemtotal",      precision: 15, scale: 12
    t.string   "mmnumber"
    t.integer  "transactionid"
    t.string   "mobilemoneyname"
    t.string   "mobilemoneynumber"
    t.decimal  "dollarvalue",       precision: 15, scale: 3
  end

  create_table "marks", force: :cascade do |t|
    t.string   "marker_type"
    t.integer  "marker_id"
    t.string   "markable_type"
    t.integer  "markable_id"
    t.string   "mark",          limit: 128
    t.datetime "created_at"
    t.index ["markable_id", "markable_type", "mark"], name: "index_marks_on_markable_id_and_markable_type_and_mark"
    t.index ["marker_id", "marker_type", "mark"], name: "index_marks_on_marker_id_and_marker_type_and_mark"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "bitcoin_id"
    t.string   "gcpicture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "",    null: false
    t.string   "encrypted_password",               default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.boolean  "admin",                            default: false
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "phone",                  limit: 8
    t.integer  "countrycode"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
