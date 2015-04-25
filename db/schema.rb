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

ActiveRecord::Schema.define(version: 20150424221752) do

  create_table "exhibits", force: :cascade do |t|
    t.string   "cidade"
    t.string   "datainicio"
    t.string   "datafim"
    t.string   "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "map"
  end

  create_table "gabinete_objects", force: :cascade do |t|
    t.string  "nome"
    t.text    "descripcao"
    t.integer "exhibit_id"
    t.string  "pessoa"
    t.string  "idade"
  end

  add_index "gabinete_objects", ["exhibit_id"], name: "index_gabinete_objects_on_exhibit_id"

  create_table "histories", force: :cascade do |t|
    t.text     "memoria"
    t.integer  "gabinete_object_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "frase"
  end

  add_index "histories", ["gabinete_object_id"], name: "index_histories_on_gabinete_object_id"

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
  end

  add_index "photos", ["exhibit_id"], name: "index_photos_on_exhibit_id"
  add_index "photos", ["gabinete_object_id"], name: "index_photos_on_gabinete_object_id"

  create_table "comments", force: :cascade do |t|
    t.text     "comentario"
    t.string   "pessoa"
    t.integer  "exhibit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["exhibit_id"], name: "index_comments_on_exhibit_id"


end
