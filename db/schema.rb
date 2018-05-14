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

ActiveRecord::Schema.define(version: 2018_05_13_233233) do

  create_table "access_points", force: :cascade do |t|
    t.string "mac"
    t.string "ip"
    t.string "status"
    t.string "token"
    t.string "last_message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "access_points_devices", id: false, force: :cascade do |t|
    t.integer "device_id", null: false
    t.integer "access_point_id", null: false
    t.index ["access_point_id"], name: "index_access_points_devices_on_access_point_id"
    t.index ["device_id"], name: "index_access_points_devices_on_device_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "device_type"
    t.string "trademark"
    t.string "device_model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "file_packages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_packages_access_points", id: false, force: :cascade do |t|
    t.integer "file_package_id"
    t.integer "access_point_id"
    t.datetime "sent"
    t.datetime "installed"
    t.index ["access_point_id"], name: "index_file_packages_access_points_on_access_point_id"
    t.index ["file_package_id"], name: "index_file_packages_access_points_on_file_package_id"
  end

  create_table "file_to_updates", force: :cascade do |t|
    t.string "name"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "file_package_id"
    t.index ["file_package_id"], name: "index_file_to_updates_on_file_package_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
