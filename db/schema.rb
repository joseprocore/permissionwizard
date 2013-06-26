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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130626161205) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "admin_id"
  end

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tabs", :force => true do |t|
    t.string   "read_only_text"
    t.string   "standard_text"
    t.string   "admin_text"
    t.string   "workflow_text"
    t.string   "note"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.string   "home"
    t.string   "emails"
    t.string   "bidding"
    t.string   "prime_contract"
    t.string   "commitments"
    t.string   "change_orders"
    t.string   "rfis"
    t.string   "submittals"
    t.string   "transmittals"
    t.string   "punch_list"
    t.string   "meetings"
    t.string   "schedule"
    t.string   "daily_log"
    t.string   "reports"
    t.string   "photos"
    t.string   "drawings"
    t.string   "documents"
    t.string   "directory"
    t.string   "admin"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "account_id"
  end

end
