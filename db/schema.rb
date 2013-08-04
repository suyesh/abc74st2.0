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

ActiveRecord::Schema.define(version: 20130804164006) do

  create_table "admins", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "store_number"
    t.string   "cell_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "store_name"
    t.string   "email"
    t.string   "autorised_person"
    t.integer  "reup_id"
    t.integer  "simple_portin_id"
    t.integer  "simple_activation_id"
    t.integer  "ultra_reup_id"
    t.integer  "ultra_portin_id"
    t.integer  "ultra_activation_id"
    t.integer  "wallet_id"
    t.integer  "ptel_reup_id"
    t.integer  "ptel_portin_id"
    t.integer  "ptel_activation_id"
    t.integer  "lyca_activation_id"
    t.integer  "lyca_portin_id"
    t.integer  "lyca_reup_id"
    t.integer  "tmobile_activation_id"
    t.integer  "tmobile_portin_id"
    t.integer  "tmobile_reup_id"
    t.integer  "h20_activation_id"
    t.integer  "h20_portin_id"
    t.integer  "h20_reup_id"
    t.integer  "international_recharge_id"
    t.integer  "cellphone_unlocking_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptel_activations", force: true do |t|
    t.string   "sim_number"
    t.string   "zip_code"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.boolean  "fourty_plan"
    t.boolean  "fifty_plan"
    t.boolean  "real_paygo"
    t.integer  "paygo_amount"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptel_portins", force: true do |t|
    t.string   "existing_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact_number"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "email"
    t.string   "old_service_provider"
    t.string   "old_account_id"
    t.string   "old_account_password"
    t.boolean  "fourtyplan"
    t.boolean  "fiftyplan"
    t.boolean  "real_paygo"
    t.integer  "paygo_amount"
    t.text     "comments"
    t.integer  "wallet_id"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptel_reups", force: true do |t|
    t.string   "pone_number"
    t.boolean  "fourty_plan"
    t.boolean  "fifty_plan"
    t.boolean  "real_paygo"
    t.integer  "paygo_amount"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reups", force: true do |t|
    t.string   "phone_number"
    t.boolean  "twentyfive_plan"
    t.boolean  "fourty_plan"
    t.boolean  "fifty_plan"
    t.boolean  "sixty_plan"
    t.boolean  "seventy_plan"
    t.boolean  "change_plan"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_activations", force: true do |t|
    t.string   "sim_number"
    t.string   "zip_code"
    t.boolean  "twentyfive_plan"
    t.boolean  "fourty_plan"
    t.boolean  "fifty_plan"
    t.boolean  "sixty_plan"
    t.boolean  "ild"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_portins", force: true do |t|
    t.string   "sim_number"
    t.string   "existing_phone"
    t.string   "zip_code"
    t.string   "current_service_provider"
    t.string   "old_account_number"
    t.string   "old_account_password"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.boolean  "twentyfive_plan"
    t.boolean  "fourty_plan"
    t.boolean  "fifty_plan"
    t.boolean  "sixty_plan"
    t.boolean  "seventy_plan"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ultra_activations", force: true do |t|
    t.string   "sim_number"
    t.string   "zip_code"
    t.boolean  "ninteen_plan"
    t.boolean  "twentynine_plan"
    t.boolean  "tirtynine_plan"
    t.boolean  "fortynine_plan"
    t.boolean  "fiftynine_plan"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ultra_portins", force: true do |t|
    t.string   "sim_number"
    t.string   "zip_code"
    t.boolean  "ninteen_plan"
    t.boolean  "twentynine_plan"
    t.boolean  "tirtynine_plan"
    t.boolean  "fortynine_plan"
    t.boolean  "fiftynine_plan"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "old_number"
    t.string   "account_no"
    t.string   "old_password"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ultra_reups", force: true do |t|
    t.string   "phone_number"
    t.boolean  "nineteen_plan"
    t.boolean  "twentynine_plan"
    t.boolean  "thirtynine_plan"
    t.boolean  "fourtynine_plan"
    t.boolean  "fiftynine_plan"
    t.boolean  "other_amount"
    t.integer  "amount"
    t.integer  "admin_id"
    t.integer  "wallet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wallets", force: true do |t|
    t.integer  "balance"
    t.integer  "refunds"
    t.integer  "income_from_activations"
    t.integer  "income_from_reup"
    t.integer  "income_from_international_recharge"
    t.integer  "unlocking"
    t.integer  "admin_id"
    t.integer  "ptel_activation_id"
    t.integer  "ptel_portin_id"
    t.integer  "ptel_reup_id"
    t.integer  "ultra_activation_id"
    t.integer  "ultra_portin_id"
    t.integer  "ultra_reup_id"
    t.integer  "simple_activation_id"
    t.integer  "simple_portin_id"
    t.integer  "simple_reup_id"
    t.integer  "lyca_activation_id"
    t.integer  "lyca_portin_id"
    t.integer  "lyca_reup_id"
    t.integer  "h20_activation_id"
    t.integer  "h20_portin_id"
    t.integer  "h20_reup_id"
    t.integer  "tmobile_activation_id"
    t.integer  "tmobile_portin_id"
    t.integer  "tmobile_reup_id"
    t.integer  "unlocking_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
