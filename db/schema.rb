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

ActiveRecord::Schema.define(version: 2018_08_12_220332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Prayers", force: :cascade do |t|
    t.string "prayer"
    t.string "name"
    t.string "relationship"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "english_prayer"
    t.string "english_name"
    t.string "english_relationship"
    t.string "english_note"
    t.integer "listid"
  end

  create_table "members", force: :cascade do |t|
    t.string "eng_name"
    t.string "kor_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prayees", force: :cascade do |t|
    t.string "eng_name"
    t.string "kor_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prayer_lists", force: :cascade do |t|
    t.string "title"
    t.datetime "last_update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prayerlists", force: :cascade do |t|
    t.string "title"
    t.datetime "last_update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "englishtitle"
  end

  create_table "prayers", force: :cascade do |t|
    t.string "prayer"
    t.string "name"
    t.string "relationship"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "english_prayer"
    t.string "english_name"
    t.string "english_relationship"
    t.string "english_note"
  end

  create_table "relations", force: :cascade do |t|
    t.string "relation"
    t.string "eng_relation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
