# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# 
#
# create_table "cohorts", force: :cascade do |t|
#   t.text "course"
#   t.text "cohort_number"
#   t.boolean "load"
# end
#
# create_table "jobtrackers", force: :cascade do |t|
#   t.text "company_name"
#   t.text "jd"
#   t.text "date_applied"
#   t.text "job_title"
#   t.integer "status"
#   t.text "job_notes"
#   t.text "collateral"
#   t.integer "user_id"
# end
#
# create_table "tasks", force: :cascade do |t|
#   t.text "name"
#   t.text "due_date"
#   t.integer "status"
#   t.text "notes"
#   t.text "task_url"
#   t.integer "user_id"
# end
#
# create_table "users", force: :cascade do |t|
#   t.text "name"
#   t.text "email"
#   t.string "password_digest"
#   t.boolean "admin"
#   t.text "image_url"
#   t.text "linkedin_url"
#   t.text "github_url"
#   t.boolean "student_status"
#   t.integer "cohort_id"
