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

ActiveRecord::Schema.define(:version => 20111125050228) do

  create_table "attackers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attacks", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogposts", :force => true do |t|
    t.string   "header"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "incident_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "reviewed"
  end

  create_table "incidents", :force => true do |t|
    t.string   "name"
    t.date     "firstseen"
    t.integer  "user_id"
    t.text     "summary"
    t.string   "pvname"
    t.integer  "pvsector_id"
    t.string   "svname"
    t.integer  "svsector_id"
    t.string   "attackerdescription"
    t.integer  "attacker_id"
    t.string   "attackdescription"
    t.integer  "attack_id"
    t.string   "targetdescription"
    t.integer  "target_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "reviewed"
    t.string   "weaknessdescription"
    t.integer  "weakness_id"
  end

  create_table "pvsectors", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "publisher"
    t.integer  "media"
    t.date     "publishingdate"
    t.integer  "user_id"
    t.integer  "event_id"
    t.string   "reference"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "reviewed"
  end

  create_table "svsectors", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin"
    t.boolean  "active"
    t.datetime "lastlogin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weaknesses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
