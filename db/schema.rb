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

ActiveRecord::Schema.define(:version => 20120327194400) do

  create_table "rentals", :force => true do |t|
    t.integer  "source_id"
    t.integer  "pagedata_id"
    t.string   "url",           :limit => 200
    t.string   "title",         :limit => 100
    t.string   "city",          :limit => 20
    t.string   "district",      :limit => 45
    t.string   "address",       :limit => 100
    t.string   "house_type",    :limit => 15
    t.string   "rent_type",     :limit => 15
    t.string   "area",          :limit => 10
    t.integer  "occupancy"
    t.string   "price_day",     :limit => 10
    t.float    "special_price"
    t.float    "special_date"
    t.integer  "bed_rooms"
    t.integer  "room_num"
    t.integer  "beds"
    t.string   "bed_type",      :limit => 10
    t.integer  "bathrooms"
    t.integer  "invoice"
    t.string   "facilities",    :limit => 500
    t.integer  "verify"
    t.string   "images",        :limit => 200
    t.string   "images_key",    :limit => 100
    t.integer  "flag"
    t.float    "lat"
    t.float    "lng"
    t.float    "bdlat"
    t.float    "bdlng"
  end

  create_table "web_sources", :force => true do |t|
    t.string   "name",         :limit => 20
    t.string   "code",         :limit => 15
    t.string   "url",          :limit => 100
    t.string   "logo",         :limit => 40
    t.text     "desc"
    t.string   "xpath_price",  :limit => 100
    t.string   "contact_name", :limit => 45
    t.string   "contact_tel",  :limit => 45
    t.string   "contact_400",  :limit => 20
    t.string   "mobile",       :limit => 45
    t.string   "address",      :limit => 100
    t.string   "qq",           :limit => 45
    t.string   "msn",          :limit => 45
    t.string   "email",        :limit => 100
    t.string   "digest",       :limit => 35
    t.string   "title",        :limit => 15
  end

end
