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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180405223757) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20180403223346) do
=======

ActiveRecord::Schema.define(version: 20180404173931) do

>>>>>>> updated with figaro and google keys
>>>>>>> updated with figaro and google keys

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "backer_evals", force: :cascade do |t|
    t.string "q_1"
    t.bigint "backer_id"
    t.bigint "dater_id"
    t.index ["backer_id"], name: "index_backer_evals_on_backer_id"
    t.index ["dater_id"], name: "index_backer_evals_on_dater_id"
  end

  create_table "backers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "f_name"
    t.string "l_name"
    t.string "image_1"
    t.string "image_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_backers_on_user_id"
  end

=======
<<<<<<< HEAD
=======

  create_table "backer_evals", force: :cascade do |t|
    t.text "q_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


>>>>>>> updated with figaro and google keys
>>>>>>> updated with figaro and google keys
  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "backer_id"
    t.bigint "dater_id"
    t.index ["backer_id"], name: "index_comments_on_backer_id"
    t.index ["dater_id"], name: "index_comments_on_dater_id"
  end

  create_table "dater_backers", force: :cascade do |t|
    t.bigint "dater_id"
    t.bigint "backer_id"
    t.string "relationship"
    t.index ["backer_id"], name: "index_dater_backers_on_backer_id"
    t.index ["dater_id"], name: "index_dater_backers_on_dater_id"
  end

  create_table "daters", force: :cascade do |t|
    t.bigint "user_id"
    t.string "f_name"
    t.string "l_name"
    t.string "image_1"
    t.string "image_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_daters_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "dater_id"
    t.integer "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dater_id"], name: "index_matches_on_dater_id"
  end

  create_table "mate_preferences", force: :cascade do |t|
    t.bigint "dater_id"
    t.integer "min_height"
    t.integer "max_height"
    t.integer "smoker"
    t.integer "alcohol"
    t.string "ethnicity"
    t.boolean "education"
    t.string "body_type"
    t.integer "zip_radius"
    t.string "religion"
    t.integer "religiosity"
    t.integer "political_leaning"
    t.integer "politicalness"
    t.boolean "has_kids"
    t.integer "wants_kids"
    t.integer "has_pets"
    t.integer "orientation"
    t.integer "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dater_id"], name: "index_mate_preferences_on_dater_id"
  end

  create_table "traits", force: :cascade do |t|
    t.bigint "dater_id"
    t.integer "height"
    t.integer "smoker"
    t.integer "alcohol"
    t.string "ethnicity"
    t.string "education"
    t.integer "body_type"
    t.string "occupation"
    t.integer "zip"
    t.string "religion"
    t.integer "religiosity"
    t.integer "political_leaning"
    t.integer "politicalness"
    t.boolean "has_kids"
    t.boolean "wants_kids"
    t.integer "has_pets"
    t.integer "orientation"
    t.integer "gender"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dater_id"], name: "index_traits_on_dater_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "auth_name"
    t.string "email"
    t.string "f_name"
    t.string "l_name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "backer_evals", "backers"
  add_foreign_key "backer_evals", "daters"
  add_foreign_key "backers", "users"
  add_foreign_key "comments", "backers"
  add_foreign_key "comments", "daters"
  add_foreign_key "dater_backers", "backers"
  add_foreign_key "dater_backers", "daters"
  add_foreign_key "daters", "users"
  add_foreign_key "matches", "daters"
  add_foreign_key "mate_preferences", "daters"
  add_foreign_key "traits", "daters"
end
