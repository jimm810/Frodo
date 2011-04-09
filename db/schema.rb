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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110409143839) do

  create_table "contract_details", :force => true do |t|
    t.integer  "contract_id"
    t.string   "name"
    t.string   "detail_type"
    t.text     "note"
    t.float    "revenue"
    t.float    "hours"
    t.float    "hours_used"
    t.float    "rate"
    t.boolean  "fixed_price"
    t.integer  "phase_id"
    t.integer  "state_id"
    t.integer  "status_id"
    t.string   "assigned_to"
    t.date     "assign_date"
    t.date     "commit_date"
    t.date     "request_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contractdetails", :force => true do |t|
    t.integer  "contract_id"
    t.string   "name"
    t.string   "type"
    t.text     "note"
    t.float    "revenue"
    t.float    "hours"
    t.float    "hours_used"
    t.float    "rate"
    t.boolean  "fixed_price"
    t.integer  "phase_id"
    t.integer  "state_id"
    t.integer  "status_id"
    t.string   "assigned_to"
    t.date     "assign_date"
    t.date     "commit_date"
    t.date     "request_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.string   "name"
    t.integer  "contract_type"
    t.date     "execution_date"
    t.integer  "customer_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phase_id"
    t.integer  "state_id"
    t.integer  "status_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "email"
    t.boolean  "active"
    t.string   "phone"
    t.string   "mobile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
