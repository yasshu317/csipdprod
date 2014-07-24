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

ActiveRecord::Schema.define(version: 20140723101959) do

  create_table "employees", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "offshore_manager_ratings", force: true do |t|
    t.integer  "domain_knowledge"
    t.integer  "technical_knowledge"
    t.integer  "verbal"
    t.integer  "written"
    t.integer  "leadership"
    t.integer  "ownership"
    t.integer  "responsiveness"
    t.integer  "presentation"
    t.integer  "involvement_in_discussions"
    t.integer  "assertiveness"
    t.integer  "discipline"
    t.integer  "month"
    t.integer  "year"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "onsite_manager_ratings", force: true do |t|
    t.integer  "domain_knowledge"
    t.integer  "technical_knowledge"
    t.integer  "verbal"
    t.integer  "written"
    t.integer  "leadership"
    t.integer  "ownership"
    t.integer  "responsiveness"
    t.integer  "presentation"
    t.integer  "involvement_in_discussions"
    t.integer  "assertiveness"
    t.integer  "discipline"
    t.integer  "month"
    t.integer  "year"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", force: true do |t|
    t.integer  "domain_knowledge"
    t.integer  "technical_knowledge"
    t.integer  "verbal"
    t.integer  "written"
    t.integer  "leadership"
    t.integer  "ownership"
    t.integer  "responsiveness"
    t.integer  "presentation"
    t.integer  "involvement_in_discussions"
    t.integer  "assertiveness"
    t.integer  "discipline"
    t.integer  "month"
    t.integer  "year"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "roles"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
