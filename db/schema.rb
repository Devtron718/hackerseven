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

ActiveRecord::Schema.define(version: 20170512230002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attacks", force: :cascade do |t|
    t.string   "url"
    t.string   "element_id"
    t.string   "element_class"
    t.boolean  "success"
    t.datetime "reported_at"
    t.datetime "rewarded_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "breaches", force: :cascade do |t|
    t.integer  "attack_id"
    t.json     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attack_id"], name: "index_breaches_on_attack_id", using: :btree
  end

end