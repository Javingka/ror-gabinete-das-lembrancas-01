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

ActiveRecord::Schema.define(version: 20150926230458) do

  create_table "comments", force: :cascade do |t|
    t.text     "comentario"
    t.string   "pessoa"
    t.integer  "exhibit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["exhibit_id"], name: "index_comments_on_exhibit_id"

  create_table "exhibits", force: :cascade do |t|
    t.string   "cidade"
    t.string   "datainicio"
    t.string   "datafim"
    t.string   "local"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "map"
    t.text     "descripcion"
    t.string   "video_src"
    t.boolean  "public",      default: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "gabinete_objects", force: :cascade do |t|
    t.string  "nome"
    t.text    "descripcao"
    t.integer "exhibit_id"
    t.string  "pessoa"
    t.string  "idade"
    t.integer "expo_ID"
    t.string  "audio_link"
    t.string  "slug"
  end

  add_index "gabinete_objects", ["exhibit_id"], name: "index_gabinete_objects_on_exhibit_id"
  add_index "gabinete_objects", ["expo_ID"], name: "index_gabinete_objects_on_expo_ID", unique: true
  add_index "gabinete_objects", ["slug"], name: "index_gabinete_objects_on_slug", unique: true

  create_table "histories", force: :cascade do |t|
    t.text     "memoria"
    t.integer  "gabinete_object_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "frase"
  end

  add_index "histories", ["gabinete_object_id"], name: "index_histories_on_gabinete_object_id"

  create_table "impressions", force: :cascade do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], name: "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], name: "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], name: "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], name: "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], name: "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], name: "poly_session_index"
  add_index "impressions", ["impressionable_type", "message", "impressionable_id"], name: "impressionable_type_message_index"
  add_index "impressions", ["user_id"], name: "index_impressions_on_user_id"

  create_table "photos", force: :cascade do |t|
    t.string  "picture"
    t.integer "gabinete_object_id"
    t.integer "exhibit_id"
    t.boolean "ecapa",              default: false
    t.boolean "ocapa",              default: false
    t.boolean "montagem",           default: false
    t.boolean "expo",               default: false
    t.boolean "cidade",             default: false
    t.boolean "natureza",           default: false
    t.boolean "coleta",             default: false
    t.boolean "cara",               default: false
  end

  add_index "photos", ["exhibit_id"], name: "index_photos_on_exhibit_id"
  add_index "photos", ["gabinete_object_id"], name: "index_photos_on_gabinete_object_id"

end
