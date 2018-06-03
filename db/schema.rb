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

ActiveRecord::Schema.define(version: 2018_06_03_140039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "mailing_addresses", force: :cascade do |t|
    t.string "street_1"
    t.string "street_2"
    t.string "city"
    t.string "state_province"
    t.string "zip_postal"
    t.string "mail_addressable_type"
    t.bigint "mail_addressable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mail_addressable_type", "mail_addressable_id"], name: "index_mail_address_mail_addressable"
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "organization_id"
    t.integer "role", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_memberships_on_organization_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "title"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
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

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
