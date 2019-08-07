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

ActiveRecord::Schema.define(version: 2019_08_06_083038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "name"
    t.bigint "question_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["tag_id"], name: "index_answers_on_tag_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datasets", force: :cascade do |t|
    t.bigint "task_id"
    t.bigint "user_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["task_id"], name: "index_datasets_on_task_id"
    t.index ["user_id"], name: "index_datasets_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_projects_on_brand_id"
  end

  create_table "projects_segments", id: false, force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "segment_id"
    t.index ["project_id"], name: "index_projects_segments_on_project_id"
    t.index ["segment_id"], name: "index_projects_segments_on_segment_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "name"
    t.bigint "survey_id"
    t.bigint "tags_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
    t.index ["tags_id"], name: "index_questions_on_tags_id"
  end

  create_table "segments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segments_tags", id: false, force: :cascade do |t|
    t.bigint "segment_id"
    t.bigint "tag_id"
    t.index ["segment_id"], name: "index_segments_tags_on_segment_id"
    t.index ["tag_id"], name: "index_segments_tags_on_tag_id"
  end

  create_table "segments_users", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "segment_id"
    t.index ["segment_id"], name: "index_segments_users_on_segment_id"
    t.index ["user_id"], name: "index_segments_users_on_user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_surveys_on_project_id"
  end

  create_table "surveys_users", id: false, force: :cascade do |t|
    t.bigint "survey_id"
    t.bigint "user_id"
    t.index ["survey_id"], name: "index_surveys_users_on_survey_id"
    t.index ["user_id"], name: "index_surveys_users_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "tags_tasks", id: false, force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "task_id"
    t.index ["tag_id"], name: "index_tags_tasks_on_tag_id"
    t.index ["task_id"], name: "index_tags_tasks_on_task_id"
  end

  create_table "tags_users", id: false, force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "user_id"
    t.index ["tag_id"], name: "index_tags_users_on_tag_id"
    t.index ["user_id"], name: "index_tags_users_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "comp"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.date "dob"
    t.string "city"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "authentication_token", limit: 30
    t.string "openid"
    t.bigint "tag_id"
    t.integer "comp"
    t.boolean "admin", default: false
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tag_id"], name: "index_users_on_tag_id"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "tags"
  add_foreign_key "datasets", "tasks"
  add_foreign_key "datasets", "users"
  add_foreign_key "projects", "brands"
  add_foreign_key "questions", "surveys"
  add_foreign_key "questions", "tags", column: "tags_id"
  add_foreign_key "surveys", "projects"
  add_foreign_key "tags", "users"
  add_foreign_key "tasks", "projects"
  add_foreign_key "users", "tags"
end
