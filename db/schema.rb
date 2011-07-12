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

ActiveRecord::Schema.define(:version => 20110326151500) do

  create_table "user_contacts", :force => true do |t|
    t.integer  "user_id",      :null => false
    t.integer  "contact_type", :null => false
    t.string   "contact",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_logs", :force => true do |t|
    t.datetime "datetime",                  :null => false
    t.integer  "user_id",                   :null => false
    t.integer  "action",     :default => 0, :null => false
    t.string   "ip",                        :null => false
    t.string   "user_agent",                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_nicknames", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "nickname",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_pages", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "url",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", :force => true do |t|
    t.integer  "user_id",                                :null => false
    t.string   "species",              :default => "",   :null => false
    t.string   "homepage",             :default => "",   :null => false
    t.string   "first_name",           :default => "",   :null => false
    t.string   "last_name",            :default => "",   :null => false
    t.string   "location",             :default => "",   :null => false
    t.string   "gps_location",         :default => "",   :null => false
    t.string   "distance_from_prague", :default => "",   :null => false
    t.text     "hobbies",              :default => "",   :null => false
    t.text     "notes",                :default => "",   :null => false
    t.boolean  "gender",               :default => true, :null => false
    t.string   "wants_to_travel",      :default => "",   :null => false
    t.date     "born_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                      :null => false
    t.string   "nickname",                      :null => false
    t.string   "password",                      :null => false
    t.string   "email",      :default => "",    :null => false
    t.integer  "status",     :default => 0,     :null => false
    t.boolean  "adult",      :default => false, :null => false
    t.boolean  "admin",      :default => false, :null => false
    t.boolean  "deleted",    :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end