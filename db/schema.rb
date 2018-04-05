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

ActiveRecord::Schema.define(version: 20180405021011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "backer_evals", force: :cascade do |t|
    t.text "q_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dater_backer_id"
    t.index ["dater_backer_id"], name: "index_backer_evals_on_dater_backer_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "dater_backer_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dater_backer_id"], name: "index_comments_on_dater_backer_id"
  end

  create_table "dater_backers", force: :cascade do |t|
    t.integer "dater_id"
    t.integer "backer_id"
    t.string "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_conversation_opt_outs", id: :serial, force: :cascade do |t|
    t.string "unsubscriber_type"
    t.integer "unsubscriber_id"
    t.integer "conversation_id"
    t.index ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id"
    t.index ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type"
  end

  create_table "mailboxer_conversations", id: :serial, force: :cascade do |t|
    t.string "subject", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mailboxer_notifications", id: :serial, force: :cascade do |t|
    t.string "type"
    t.text "body"
    t.string "subject", default: ""
    t.string "sender_type"
    t.integer "sender_id"
    t.integer "conversation_id"
    t.boolean "draft", default: false
    t.string "notification_code"
    t.string "notified_object_type"
    t.integer "notified_object_id"
    t.string "attachment"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
    t.boolean "global", default: false
    t.datetime "expires"
    t.index ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id"
    t.index ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type"
    t.index ["notified_object_type", "notified_object_id"], name: "mailboxer_notifications_notified_object"
    t.index ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type"
    t.index ["type"], name: "index_mailboxer_notifications_on_type"
  end

  create_table "mailboxer_receipts", id: :serial, force: :cascade do |t|
    t.string "receiver_type"
    t.integer "receiver_id"
    t.integer "notification_id", null: false
    t.boolean "is_read", default: false
    t.boolean "trashed", default: false
    t.boolean "deleted", default: false
    t.string "mailbox_type", limit: 25
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_delivered", default: false
    t.string "delivery_method"
    t.string "message_id"
    t.index ["notification_id"], name: "index_mailboxer_receipts_on_notification_id"
    t.index ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type"
  end

  create_table "mate_preferences", force: :cascade do |t|
    t.bigint "user_id"
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
    t.index ["user_id"], name: "index_mate_preferences_on_user_id"
  end

  create_table "pools", force: :cascade do |t|
    t.integer "dater_id"
    t.integer "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traits", force: :cascade do |t|
    t.bigint "user_id"
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
    t.index ["user_id"], name: "index_traits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "image1"
    t.string "image2"
    t.string "f_name"
    t.string "l_name"
  end

  add_foreign_key "comments", "dater_backers"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "mate_preferences", "users"
  add_foreign_key "traits", "users"
end
