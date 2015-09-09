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

ActiveRecord::Schema.define(version: 20150909065951) do

  create_table "batches", force: :cascade do |t|
    t.string   "year"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "batches", ["course_id"], name: "index_batches_on_course_id"

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.string   "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "total"
    t.integer  "available"
    t.integer  "issued"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.integer  "batch_id"
  end

  create_table "student_library_statuses", force: :cascade do |t|
    t.date     "issue_date"
    t.date     "submission_date"
    t.date     "submitted_on"
    t.integer  "student_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "max_allocation_of_books"
    t.integer  "min_allocation_of_books"
    t.string   "returned_before"
    t.string   "returned_after"
    t.integer  "fine_charge"
    t.integer  "book_id"
  end

  add_index "student_library_statuses", ["student_id"], name: "index_student_library_statuses_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "member_id"
    t.string   "enrollment_no"
    t.string   "name"
    t.string   "contact"
    t.text     "adderss"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "section_id"
    t.string   "image"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "group_id"
    t.string   "image"
  end

end
