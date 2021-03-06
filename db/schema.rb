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

ActiveRecord::Schema.define(version: 20160507221815) do

  create_table "history_symptoms", force: :cascade do |t|
    t.integer  "symptom_id"
    t.integer  "medical_history_id"
    t.datetime "date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "hormone_levels", force: :cascade do |t|
    t.integer  "study_id"
    t.integer  "level"
    t.integer  "min"
    t.integer  "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hormones", force: :cascade do |t|
    t.integer  "hormone_level_id"
    t.string   "name"
    t.string   "abbreviation"
    t.string   "unit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "medical_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studies", force: :cascade do |t|
    t.integer  "medical_history_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatments", force: :cascade do |t|
    t.integer  "medical_history_id"
    t.string   "medicament"
    t.integer  "weight"
    t.integer  "dose"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "age"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
