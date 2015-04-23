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

ActiveRecord::Schema.define(version: 20150423151237) do

  create_table "exhibits", force: :cascade do |t|
    t.string   "cidade"
    t.string   "datainicio"
    t.string   "datafim"
    t.string   "local"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gabinete_objects", force: :cascade do |t|
    t.string  "nome"
    t.text    "descripcao"
    t.integer "exhibit_id"
  end

  add_index "gabinete_objects", ["exhibit_id"], name: "index_gabinete_objects_on_exhibit_id"

  create_table "photos", force: :cascade do |t|
    t.string  "picture"
    t.integer "gabinete_object_id"
  end

  add_index "photos", ["gabinete_object_id"], name: "index_photos_on_gabinete_object_id"

end
