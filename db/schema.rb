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

ActiveRecord::Schema.define(version: 2018_08_09_104721) do

  create_table "cloth_combis", force: :cascade do |t|
    t.integer "cloth_id"
    t.integer "combi_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cloth_id"], name: "index_cloth_combis_on_cloth_id"
    t.index ["combi_id"], name: "index_cloth_combis_on_combi_id"
  end

  create_table "cloths", force: :cascade do |t|
    t.binary "photo", null: false
    t.integer "category", null: false
    t.integer "color", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "fav", default: false
    t.string "photo_name"
  end

  create_table "combis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
