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

ActiveRecord::Schema.define(version: 20180319201537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicants", force: :cascade do |t|
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.string "email"
    t.string "mobile_number"
    t.text "cover_letter"
    t.string "resume"
    t.index ["job_id"], name: "index_applicants_on_job_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "website"
    t.string "location"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "photo"
    t.string "logo"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "company_industries", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "industry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_industries_on_company_id"
    t.index ["industry_id"], name: "index_company_industries_on_industry_id"
  end

  create_table "company_perks", force: :cascade do |t|
    t.bigint "company_id"
    t.bigint "perk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_perks_on_company_id"
    t.index ["perk_id"], name: "index_company_perks_on_perk_id"
  end

  create_table "industries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "role"
    t.text "description"
    t.string "duties"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "job_type"
    t.string "keywords"
    t.string "salary"
    t.text "pitch"
    t.string "email"
    t.string "location"
    t.string "unregistered_company_name"
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  create_table "perks", force: :cascade do |t|
    t.string "name"
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
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applicants", "jobs"
  add_foreign_key "companies", "users"
  add_foreign_key "company_industries", "companies"
  add_foreign_key "company_industries", "industries"
  add_foreign_key "company_perks", "companies"
  add_foreign_key "company_perks", "perks"
  add_foreign_key "jobs", "companies"
end
