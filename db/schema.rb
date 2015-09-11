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

ActiveRecord::Schema.define(version: 20150911103649) do

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
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "total"
    t.integer  "available"
    t.integer  "issued"
    t.integer  "student_library_status_id"
    t.string   "attachment"
    t.string   "image"
  end

  create_table "books_student_library_statuses", force: :cascade do |t|
    t.integer "student_library_status_id"
    t.integer "book_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.string   "employee_id"
    t.string   "email"
    t.string   "contact_1"
    t.string   "contact_2"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "faculty_library_statuses", force: :cascade do |t|
    t.string   "issue_date"
    t.string   "submission_date"
    t.string   "submitted_on"
    t.integer  "faculty_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "book_id"
  end

  add_index "faculty_library_statuses", ["faculty_id"], name: "index_faculty_library_statuses_on_faculty_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string   "image"
    t.integer  "imagable_id"
    t.string   "imagable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mail_to_members", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.integer  "library_member_id"
    t.string   "library_member_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "email"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "group_id"
    t.string   "image"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
