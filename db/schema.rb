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

ActiveRecord::Schema.define(version: 20180128150414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.string "heading"
    t.string "subheading"
    t.text "body"
    t.integer "order", null: false
    t.integer "role"
    t.integer "style"
    t.string "blockable_type"
    t.bigint "blockable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blockable_type", "blockable_id"], name: "index_blocks_on_blockable_type_and_blockable_id"
  end

  create_table "grade_levels", force: :cascade do |t|
    t.integer "level", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "title"
    t.integer "role"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "lesson_sets", force: :cascade do |t|
    t.string "title"
    t.bigint "grade_level_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_level_id"], name: "index_lesson_sets_on_grade_level_id"
    t.index ["project_id"], name: "index_lesson_sets_on_project_id"
  end

  create_table "lesson_sets_lessons", id: false, force: :cascade do |t|
    t.bigint "lesson_id"
    t.bigint "lesson_set_id"
    t.index ["lesson_id"], name: "index_lesson_sets_lessons_on_lesson_id"
    t.index ["lesson_set_id"], name: "index_lesson_sets_lessons_on_lesson_set_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects_units", id: false, force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "unit_id"
    t.index ["project_id"], name: "index_projects_units_on_project_id"
    t.index ["unit_id"], name: "index_projects_units_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
