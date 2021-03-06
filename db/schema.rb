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

ActiveRecord::Schema.define(version: 20170328142701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "biddings", force: :cascade do |t|
    t.string   "code"
    t.string   "provision_order"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "client_id"
    t.string   "status"
    t.index ["client_id"], name: "index_biddings_on_client_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "cbu"
    t.string   "account"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "city"
    t.integer  "postal_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cuit"
    t.index ["cbu"], name: "index_clients_on_cbu", unique: true, using: :btree
  end

  create_table "dispatches", force: :cascade do |t|
    t.date     "expire_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "bidding_id"
    t.boolean  "paid"
    t.index ["bidding_id"], name: "index_dispatches_on_bidding_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "price"
    t.integer  "cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "provider_id"
    t.integer  "dispatch_id"
    t.index ["dispatch_id"], name: "index_items_on_dispatch_id", using: :btree
    t.index ["provider_id"], name: "index_items_on_provider_id", using: :btree
  end

  create_table "providers", force: :cascade do |t|
    t.string   "cbu"
    t.string   "account"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "city"
    t.integer  "postal_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["cbu"], name: "index_providers_on_cbu", unique: true, using: :btree
  end

end
