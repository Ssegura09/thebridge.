# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_08_194508) do

  create_table "psych_categories", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "type"
    t.string "details"
  end

  create_table "saved_resources", force: :cascade do |t|
    t.string "name"
    t.integer "resource_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "ethnicity"
    t.integer "rating"
    t.integer "years_experience"
    t.string "virtual_sessions"
    t.string "email_address"
    t.string "psych_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "password"
    t.integer "age"
    t.string "gender"
    t.string "email_address"
    t.string "location"
  end

end
