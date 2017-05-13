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

ActiveRecord::Schema.define(version: 20170513151248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attacks", force: :cascade do |t|
    t.integer  "host_id"
    t.string   "url"
    t.string   "element_id"
    t.string   "element_class"
    t.string   "xpath"
    t.boolean  "success"
    t.datetime "reported_at"
    t.datetime "rewarded_at"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["host_id"], name: "index_attacks_on_host_id", using: :btree
  end

  create_table "bounties", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breaches", force: :cascade do |t|
    t.integer  "attack_id"
    t.integer  "host_id"
    t.json     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attack_id"], name: "index_breaches_on_attack_id", using: :btree
    t.index ["host_id"], name: "index_breaches_on_host_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "host_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_events_on_host_id", using: :btree
  end

  create_table "hosts", force: :cascade do |t|
    t.string   "name"
    t.integer  "bounty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bounty_id"], name: "index_hosts_on_bounty_id", using: :btree
  end

  create_table "misses", force: :cascade do |t|
    t.integer  "host_id"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_misses_on_host_id", using: :btree
  end

end
