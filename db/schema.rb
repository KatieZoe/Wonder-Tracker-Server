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

ActiveRecord::Schema.define(version: 2021_06_07_020119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.text "course"
    t.text "cohort_number"
    t.boolean "load"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobtrackers", force: :cascade do |t|
    t.text "company_name"
    t.text "jd"
    t.text "date_applied"
    t.text "job_title"
    t.integer "status"
    t.text "job_notes"
    t.text "collateral"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.text "name"
    t.text "due_date"
    t.integer "status"
    t.text "notes"
    t.text "task_url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.string "password_digest"
    t.boolean "admin"
    t.text "image_url"
    t.text "linkedin_url"
    t.text "github_url"
    t.boolean "student_status"
    t.integer "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
