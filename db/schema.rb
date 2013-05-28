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

ActiveRecord::Schema.define(:version => 20130528002315) do

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.string   "dish_type"
    t.string   "detail"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.datetime "delivery_date"
    t.integer  "user_id"
    t.integer  "total"
    t.string   "detail"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "addr"
    t.boolean  "delivered",     :default => false
  end

  create_table "reservations", :force => true do |t|
    t.datetime "appoint_date"
    t.integer  "party"
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "soupdejours", :force => true do |t|
    t.string   "sname"
    t.date     "sdate"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.integer  "points_earned",   :default => 0
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "useremail"
  end

end
