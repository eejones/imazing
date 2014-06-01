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

ActiveRecord::Schema.define(version: 20140601071131) do

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "subject"
    t.text     "body"
    t.integer  "product_id"
    t.integer  "fromuser_id"
    t.integer  "touser_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["product_id"], name: "index_messages_on_product_id"

  create_table "modalities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "whattype_id"
    t.integer  "manufacturer_id"
  end

  add_index "modalities", ["manufacturer_id"], name: "index_modalities_on_manufacturer_id"
  add_index "modalities", ["whattype_id"], name: "index_modalities_on_whattype_id"

  create_table "modtypemanufacturers", force: true do |t|
    t.integer  "manufacturer_id"
    t.integer  "modtype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modtypemanufacturers", ["manufacturer_id"], name: "index_modtypemanufacturers_on_manufacturer_id"
  add_index "modtypemanufacturers", ["modtype_id"], name: "index_modtypemanufacturers_on_modtype_id"

  create_table "modtypes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manufacturer_id"
    t.integer  "modality_id"
  end

  add_index "modtypes", ["manufacturer_id"], name: "index_modtypes_on_manufacturer_id"
  add_index "modtypes", ["modality_id"], name: "index_modtypes_on_modality_id"

  create_table "overallcategories", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "overallcategories", ["product_id"], name: "index_overallcategories_on_product_id"

  create_table "products", force: true do |t|
    t.string   "serial"
    t.string   "condition"
    t.string   "country"
    t.string   "region"
    t.string   "prefremovalmethod"
    t.decimal  "price"
    t.integer  "message_id"
    t.string   "warranty"
    t.integer  "rating"
    t.date     "listedon"
    t.date     "listeduntil"
    t.boolean  "autorenew"
    t.string   "availability"
    t.date     "availabilitydate"
    t.integer  "user_id"
    t.date     "year"
    t.boolean  "dealertype"
    t.boolean  "hospitaltype"
    t.boolean  "orthopedictype"
    t.boolean  "imagingcentertype"
    t.boolean  "drofficetype"
    t.boolean  "urgenttype"
    t.boolean  "painmanagementtype"
    t.boolean  "veterinarytype"
    t.boolean  "chiropractictype"
    t.boolean  "podiatrytype"
    t.boolean  "dentaltype"
    t.integer  "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manufacturer_id"
    t.integer  "modtype_id"
    t.integer  "modality_id"
    t.integer  "overallcategory_id"
    t.string   "transaction_name"
    t.string   "user_name"
    t.string   "modality_name"
    t.string   "modtype_name"
    t.string   "manufacturer_name"
    t.string   "overallcategory_name"
  end

  add_index "products", ["manufacturer_id"], name: "index_products_on_manufacturer_id"
  add_index "products", ["manufacturer_name"], name: "index_products_on_manufacturer_name"
  add_index "products", ["message_id"], name: "index_products_on_message_id"
  add_index "products", ["modality_id"], name: "index_products_on_modality_id"
  add_index "products", ["modality_name"], name: "index_products_on_modality_name"
  add_index "products", ["modtype_id"], name: "index_products_on_modtype_id"
  add_index "products", ["modtype_name"], name: "index_products_on_modtype_name"
  add_index "products", ["overallcategory_id"], name: "index_products_on_overallcategory_id"
  add_index "products", ["overallcategory_name"], name: "index_products_on_overallcategory_name"
  add_index "products", ["transaction_id"], name: "index_products_on_transaction_id"
  add_index "products", ["transaction_name"], name: "index_products_on_transaction_name"
  add_index "products", ["user_id"], name: "index_products_on_user_id"
  add_index "products", ["user_name"], name: "index_products_on_user_name"

  create_table "search_suggestions", force: true do |t|
    t.string   "term"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "keywords"
    t.integer  "manufacturer_id"
    t.integer  "modtype_id"
    t.integer  "modality_id"
    t.integer  "condition_id"
    t.integer  "country_id"
    t.integer  "region_id"
    t.integer  "prefremovalmethod_id"
    t.float    "minimum_price"
    t.float    "maximum_price"
    t.integer  "rating"
    t.date     "availabilitydate"
    t.date     "year"
    t.boolean  "dealertype"
    t.boolean  "hospitaltype"
    t.boolean  "orthopedictype"
    t.boolean  "imagingcentertype"
    t.boolean  "drofficetype"
    t.boolean  "urgenttype"
    t.boolean  "painmanagementtype"
    t.boolean  "veterinarytype"
    t.boolean  "chiropractictype"
    t.boolean  "podiatrytype"
    t.boolean  "dentaltype"
    t.integer  "overallcategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.string   "prefremovalmethod"
    t.decimal  "sellremovalcost"
    t.decimal  "sellshipcost"
    t.integer  "product_id"
    t.time     "selldate"
    t.integer  "selluser"
    t.integer  "buyuser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transactions", ["product_id"], name: "index_transactions_on_product_id"

  create_table "uploads", force: true do |t|
    t.integer  "product_id"
    t.string   "upload_file_name"
    t.string   "upload_content_type"
    t.integer  "upload_file_size"
    t.datetime "upload_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "integer"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "fname"
    t.string   "lname"
    t.string   "company"
    t.string   "phonecountrycode"
    t.string   "officephone"
    t.string   "mobilephone"
    t.boolean  "anonymous"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "message_id"
    t.integer  "product_id"
    t.integer  "transaction_id"
    t.boolean  "dealertype"
    t.boolean  "hospitaltype"
    t.boolean  "orthopedictype"
    t.boolean  "imagingcentertype"
    t.boolean  "drofficetype"
    t.boolean  "urgenttype"
    t.boolean  "painmanagementtype"
    t.boolean  "veterinarytype"
    t.boolean  "chiropractictype"
    t.boolean  "podiatrytype"
    t.boolean  "dentaltype"
    t.integer  "userlevel"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["message_id"], name: "index_users_on_message_id"
  add_index "users", ["product_id"], name: "index_users_on_product_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["transaction_id"], name: "index_users_on_transaction_id"

end
