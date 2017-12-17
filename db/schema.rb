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

ActiveRecord::Schema.define(version: 0) do

  create_table "acct_submits", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.datetime "submit_date"
    t.string "arno", limit: 4, default: "", null: false, collation: "latin1_swedish_ci"
    t.string "fyend", limit: 4, collation: "latin1_swedish_ci"
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "aoo_refs", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "aootype", limit: 1, default: "", null: false
    t.integer "aookey", default: 0, null: false
    t.string "aooname", limit: 50, null: false
    t.string "aoosort", limit: 50, null: false
    t.string "welsh", limit: 1, null: false
    t.string "master", limit: 2
    t.string "code", limit: 20
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "ar_submits", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.string "arno", limit: 4, default: "", null: false, collation: "latin1_swedish_ci"
    t.datetime "submit_date"
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "charities", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.integer "subno", default: 0, null: false
    t.string "name", collation: "latin1_swedish_ci"
    t.string "orgtype", collation: "latin1_swedish_ci"
    t.text "gd", collation: "latin1_swedish_ci"
    t.string "aob", collation: "latin1_swedish_ci"
    t.string "aob_defined", limit: 1, collation: "latin1_swedish_ci"
    t.string "nhs", limit: 1, collation: "latin1_swedish_ci"
    t.string "ha_no", collation: "latin1_swedish_ci"
    t.string "corr", collation: "latin1_swedish_ci"
    t.string "add1", collation: "latin1_swedish_ci"
    t.string "add2", collation: "latin1_swedish_ci"
    t.string "add3", collation: "latin1_swedish_ci"
    t.string "add4", collation: "latin1_swedish_ci"
    t.string "add5", collation: "latin1_swedish_ci"
    t.string "postcode", limit: 15, collation: "latin1_swedish_ci"
    t.string "phone", limit: 100, collation: "latin1_swedish_ci"
    t.string "fax", limit: 100, collation: "latin1_swedish_ci"
    t.float "lon", limit: 53
    t.float "lat", limit: 53
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "charity_aoos", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.string "aootype", limit: 1, default: "", null: false, collation: "latin1_swedish_ci"
    t.integer "aookey", default: 0, null: false
    t.string "welsh", limit: 1, collation: "latin1_swedish_ci"
    t.integer "master"
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "charity_classes", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.integer "charity_class", default: 0, null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "main_charities", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.string "coyno", collation: "latin1_swedish_ci"
    t.string "trustees", limit: 1, collation: "latin1_swedish_ci"
    t.string "fyend", limit: 4, collation: "latin1_swedish_ci"
    t.string "welsh", limit: 1, collation: "latin1_swedish_ci"
    t.string "incomedate"
    t.integer "income"
    t.string "grouptype", limit: 4, collation: "latin1_swedish_ci"
    t.string "email", collation: "latin1_swedish_ci"
    t.string "web", collation: "latin1_swedish_ci"
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "registrations", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "regno", limit: 14, default: "0", null: false, collation: "latin1_swedish_ci"
    t.integer "subno", default: 0, null: false
    t.datetime "regdate"
    t.datetime "remdate"
    t.string "remcode", limit: 3, collation: "latin1_swedish_ci"
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.timestamp "updated_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

end
