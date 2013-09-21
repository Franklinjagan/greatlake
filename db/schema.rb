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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130921124854) do

  create_table "certified_program_users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "city"
    t.integer  "mobile"
    t.string   "course"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.binary   "applicant_photo"
    t.string   "applicant_photo_type"
    t.string   "applicant_photo_name"
    t.date     "date_of_birth"
    t.string   "marital_status"
    t.string   "father_name"
    t.string   "father_occupation"
    t.string   "mother_name"
    t.string   "mother_occupation"
    t.string   "Nationality"
    t.text     "mailing_address"
    t.integer  "landline"
    t.string   "pg_degree"
    t.string   "pg_discipline"
    t.string   "pg_college"
    t.string   "pg_university"
    t.integer  "pg_year"
    t.integer  "pg_cpga"
    t.string   "gr_degree"
    t.string   "gr_discipline"
    t.string   "gr_college"
    t.string   "gr_university"
    t.integer  "gr_year"
    t.integer  "gr_cpga"
    t.string   "hsc_degree"
    t.string   "hsc_discipline"
    t.string   "hsc_college"
    t.string   "hsc_university"
    t.integer  "hsc_year"
    t.integer  "hsc_cpga"
    t.string   "sc_degree"
    t.string   "sc_discipline"
    t.string   "sc_college"
    t.string   "sc_university"
    t.integer  "sc_year"
    t.integer  "sc_cpga"
    t.string   "experience"
    t.string   "ctc"
    t.string   "organization_a"
    t.string   "designation_a"
    t.string   "nature_of_work_a"
    t.date     "from_a"
    t.date     "to_a"
    t.string   "organization_b"
    t.string   "designation_b"
    t.string   "nature_of_work_b"
    t.date     "from_b"
    t.date     "to_b"
    t.text     "academic_honor_a"
    t.text     "academic_honor_b"
    t.string   "extracuricular_a"
    t.string   "extracuricular_b"
    t.string   "others_a"
    t.string   "others_b"
    t.string   "payment_mode"
    t.string   "current_city"
    t.string   "applicant_name"
    t.string   "gender"
  end

end
