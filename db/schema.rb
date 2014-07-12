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

ActiveRecord::Schema.define(version: 20140712003902) do

  create_table "categories", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dream_categories", force: true do |t|
    t.integer  "dream_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dream_categories", ["category_id"], name: "index_dream_categories_on_category_id"
  add_index "dream_categories", ["dream_id"], name: "index_dream_categories_on_dream_id"

  create_table "dream_likes", force: true do |t|
    t.integer  "dream_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dream_likes", ["dream_id"], name: "index_dream_likes_on_dream_id"
  add_index "dream_likes", ["user_id"], name: "index_dream_likes_on_user_id"

  create_table "dream_tags", force: true do |t|
    t.integer  "dream_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dream_tags", ["dream_id"], name: "index_dream_tags_on_dream_id"
  add_index "dream_tags", ["tag_id"], name: "index_dream_tags_on_tag_id"

  create_table "dreams", force: true do |t|
    t.string   "description"
    t.string   "title"
    t.string   "place"
    t.integer  "max_assistance"
    t.integer  "min_assistance"
    t.date     "event_date"
    t.float    "event_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "idea_categories", force: true do |t|
    t.integer  "idea_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "idea_categories", ["category_id"], name: "index_idea_categories_on_category_id"
  add_index "idea_categories", ["idea_id"], name: "index_idea_categories_on_idea_id"

  create_table "idea_likes", force: true do |t|
    t.integer  "idea_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "idea_likes", ["idea_id"], name: "index_idea_likes_on_idea_id"
  add_index "idea_likes", ["user_id"], name: "index_idea_likes_on_user_id"

  create_table "idea_tags", force: true do |t|
    t.integer  "idea_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "idea_tags", ["idea_id"], name: "index_idea_tags_on_idea_id"
  add_index "idea_tags", ["tag_id"], name: "index_idea_tags_on_tag_id"

  create_table "ideas", force: true do |t|
    t.string   "description"
    t.string   "title"
    t.string   "possible_places", default: "--- []\n"
    t.integer  "max_assistance"
    t.integer  "min_assistance"
    t.date     "possible_dates"
    t.date     "creation_date"
    t.float    "max_cost"
    t.float    "min_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", force: true do |t|
    t.string   "possible_date",   default: "--- []\n"
    t.integer  "idea_id"
    t.integer  "user_id"
    t.integer  "dream_id"
    t.string   "possible_places", default: "--- []\n"
    t.integer  "max_assistance"
    t.integer  "min_assistance"
    t.float    "max_cost"
    t.float    "min_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "dream_id"
    t.integer  "user_id"
    t.date     "payment_date"
    t.float    "amount"
    t.integer  "instalments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_quizzes", force: true do |t|
    t.integer  "user_id"
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_quizzes", ["quiz_id"], name: "index_user_quizzes_on_quiz_id"
  add_index "user_quizzes", ["user_id"], name: "index_user_quizzes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "birth_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
