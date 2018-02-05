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

ActiveRecord::Schema.define(version: 20180205210627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "start"
    t.datetime "end"
    t.money "hourly_rate", scale: 2
    t.boolean "repeat_weekly"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "completed_courses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.money "hourly_rate", scale: 2
  end

  create_table "courses", force: :cascade do |t|
    t.string "title1"
    t.string "title2"
    t.string "subject"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "help_session_requests", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tutor_id"
    t.integer "course_id"
    t.datetime "start"
    t.datetime "end"
    t.boolean "accepted"
    t.boolean "denied"
    t.integer "denied_by"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "help_sessions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tutor_id"
    t.integer "course_id"
    t.boolean "user_started"
    t.boolean "tutor_started"
    t.datetime "started_at"
    t.boolean "user_ended"
    t.boolean "tutor_ended"
    t.datetime "ended_at"
    t.datetime "start"
    t.datetime "end"
    t.boolean "cancelled"
    t.integer "cancelled_by"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "from_user_id"
    t.integer "to_user_id"
    t.integer "help_session_id"
    t.money "amount", scale: 2
    t.money "tip", scale: 2
    t.boolean "completed"
    t.string "proof"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "reviewer_user_id"
    t.integer "rating"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
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
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
