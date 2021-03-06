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

ActiveRecord::Schema.define(version: 20171115180745) do

  create_table "climbs", force: :cascade do |t|
    t.integer "route_id"
    t.integer "user_id"
    t.datetime "completion_time"
    t.integer "fun_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "grade"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "s3_file_references", force: :cascade do |t|
    t.string "object_key"
    t.string "bucket_name"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "file_referable_id"
    t.index ["file_referable_id", nil], name: "file_referable_index"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index [nil], name: "index_users_on_reset_password_token", unique: true
  end

end
