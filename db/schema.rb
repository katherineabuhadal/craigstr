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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140724202714) do
=======
ActiveRecord::Schema.define(version: 20140724145231) do
>>>>>>> Users can search by region, category, and title

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.string   "title",      null: false
    t.integer  "region_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categories", ["region_id"], name: "index_categories_on_region_id", using: :btree

  create_table "post_responses", force: true do |t|
    t.text     "message",    null: false
    t.integer  "post_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_responses", ["post_id"], name: "index_post_responses_on_post_id", using: :btree

  create_table "posts", force: true do |t|
    t.string   "title",                        null: false
    t.string   "body",                         null: false
    t.integer  "user_id",                      null: false
    t.integer  "category_id",                  null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "spam",         default: false, null: false
    t.string   "url",          default: "",    null: false
    t.string   "search_cache", default: "",    null: false
  end

  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "regions", force: true do |t|
    t.string   "name",       default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "slug"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "regions", ["slug"], name: "index_regions_on_slug", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false, null: false
  end

end
