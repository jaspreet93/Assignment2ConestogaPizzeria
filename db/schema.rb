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

ActiveRecord::Schema.define(version: 20160320222118) do

  create_table "customers", force: :cascade do |t|
    t.string   "NAME",                   limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.boolean  "admin",                              default: false
  end

  add_index "customers", ["email"], name: "index_customers_on_email", unique: true, using: :btree
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true, using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "Appartment",     limit: 255
    t.string   "Street",         limit: 255
    t.string   "City",           limit: 255
    t.string   "PostalCode",     limit: 255
    t.string   "Province",       limit: 255
    t.string   "Size",           limit: 255
    t.string   "VegToppings",    limit: 255
    t.string   "NonVegToppings", limit: 255
    t.string   "Crust",          limit: 255
    t.float    "Price",          limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "customerId",     limit: 255
  end

end
