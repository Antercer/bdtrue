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

ActiveRecord::Schema.define(version: 20200323233050) do

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "boards", ["user_id"], name: "index_boards_on_user_id"

  create_table "make_subadmins", force: :cascade do |t|
    t.integer  "usergive_id"
    t.integer  "userget_id"
    t.integer  "board_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "make_subadmins", ["board_id"], name: "index_make_subadmins_on_board_id"
  add_index "make_subadmins", ["userget_id"], name: "index_make_subadmins_on_userget_id"
  add_index "make_subadmins", ["usergive_id"], name: "index_make_subadmins_on_usergive_id"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "post_datetime"
    t.string   "imagen_url"
    t.boolean  "inactivo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "board_id"
    t.integer  "user_id"
  end

  add_index "posts", ["board_id"], name: "index_posts_on_board_id"
  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "replies", force: :cascade do |t|
    t.text     "contenido"
    t.integer  "post_id"
    t.datetime "reply_datetime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
  end

  add_index "replies", ["post_id"], name: "index_replies_on_post_id"
  add_index "replies", ["user_id"], name: "index_replies_on_user_id"

  create_table "seccions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subadmins", force: :cascade do |t|
    t.integer  "user1_id"
    t.integer  "user2_id"
    t.integer  "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subadmins", ["board_id"], name: "index_subadmins_on_board_id"
  add_index "subadmins", ["user1_id"], name: "index_subadmins_on_user1_id"
  add_index "subadmins", ["user2_id"], name: "index_subadmins_on_user2_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
