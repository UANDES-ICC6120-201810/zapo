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

  create_table "access_group_bus_stops", force: :cascade do |t|
    t.integer "accessGroup_id"
    t.integer "busStop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessGroup_id"], name: "index_access_group_bus_stops_on_accessGroup_id"
    t.index ["busStop_id"], name: "index_access_group_bus_stops_on_busStop_id"
  end

  create_table "access_group_services", force: :cascade do |t|
    t.integer "accessGroup_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessGroup_id"], name: "index_access_group_services_on_accessGroup_id"
    t.index ["service_id"], name: "index_access_group_services_on_service_id"
  end

  create_table "access_groups", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "bus_events", force: :cascade do |t|
    t.integer "bus_id"
    t.integer "busStop_id"
    t.datetime "EventTime"
    t.decimal "BusSpeed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["busStop_id"], name: "index_bus_events_on_busStop_id"
    t.index ["bus_id"], name: "index_bus_events_on_bus_id"
  end

  create_table "bus_services", force: :cascade do |t|
    t.integer "service_id"
    t.integer "bus_id"
    t.integer "operator_id"
    t.datetime "CapturedAt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bus_id"], name: "index_bus_services_on_bus_id"
    t.index ["operator_id"], name: "index_bus_services_on_operator_id"
    t.index ["service_id"], name: "index_bus_services_on_service_id"
  end

  create_table "bus_stop_congestions", force: :cascade do |t|
    t.integer "busStop_id"
    t.datetime "EventTime"
    t.decimal "AmountOfPeople"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["busStop_id"], name: "index_bus_stop_congestions_on_busStop_id"
  end

  create_table "bus_stop_services", force: :cascade do |t|
    t.integer "busStop_id"
    t.integer "service_id"
    t.string "LastArrivalEstimation"
    t.datetime "CapturedAt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["busStop_id"], name: "index_bus_stop_services_on_busStop_id"
    t.index ["service_id"], name: "index_bus_stop_services_on_service_id"
  end

  create_table "bus_stops", force: :cascade do |t|
    t.string "Code"
    t.string "Location"
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buses", force: :cascade do |t|
    t.string "BusPlateNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "operators", force: :cascade do |t|
    t.string "Name"
    t.integer "OperatorNumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "RouteCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribed_customers", force: :cascade do |t|
    t.integer "accessGroup_id"
    t.string "Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accessGroup_id"], name: "index_subscribed_customers_on_accessGroup_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "Name"
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
