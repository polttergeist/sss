# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_924_140_223) do
  create_table "newspapers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "kind", null: false
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "name", null: false
    t.integer "kind", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "subscribable_kind"
    t.integer "status"
    t.integer "user_id"
    t.integer "subscribable_id"
    t.index ["subscribable_kind"], name: "index_subscriptions_on_subscribable_kind_and_subscribable_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "active", default: 1
  end
end
