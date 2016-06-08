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

ActiveRecord::Schema.define(version: 20160602040230) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content",      limit: 255
    t.integer  "user_id",      limit: 4
    t.integer  "micropost_id", limit: 4
    t.integer  "comment_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["comment_id"], name: "fk_rails_eb62568a69", using: :btree
  add_index "comments", ["micropost_id"], name: "fk_rails_07de7e569c", using: :btree
  add_index "comments", ["user_id"], name: "fk_rails_452df09c60", using: :btree

  create_table "microposts", force: :cascade do |t|
    t.text     "content",     limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255
  end

  add_index "microposts", ["category_id"], name: "fk_rails_7c04fe538d", using: :btree
  add_index "microposts", ["user_id"], name: "fk_rails_e00b81b250", using: :btree

  create_table "substitution_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "substitutions", force: :cascade do |t|
    t.string   "replace_what",         limit: 255
    t.string   "replace_with",         limit: 255
    t.string   "substitution_type_id", limit: 255
    t.string   "user_id",              limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "comments", "comments"
  add_foreign_key "comments", "microposts"
  add_foreign_key "comments", "users"
  add_foreign_key "microposts", "categories"
  add_foreign_key "microposts", "users"
end
