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

ActiveRecord::Schema.define(version: 2023_07_26_135200) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "phone_no"
    t.integer "id_number"
    t.string "email_address"
    t.string "po_box"
    t.text "local_address"
    t.string "county"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.integer "quantity"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id"
    t.integer "space_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["space_id"], name: "index_orders_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "space_type"
    t.string "size"
    t.string "style"
    t.integer "price_per_unit"
    t.integer "length"
    t.integer "width"
    t.integer "height"
    t.string "location"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "spaces"
end
