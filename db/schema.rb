# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_05_17_050024) do
  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "wisdom"
    t.integer "intelligence"
    t.integer "charisma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.text "background_story"
    t.integer "level", default: 1
    t.integer "experience", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hit_points", default: 10
    t.boolean "is_alive", default: true
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "wisdom"
    t.integer "intelligence"
    t.integer "charisma"
    t.integer "hit_points", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_alive", default: true
  end

  create_table "non_playable_characters", force: :cascade do |t|
    t.string "name"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "wisdom"
    t.integer "intelligence"
    t.integer "charisma"
    t.integer "hit_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
