# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_30_223845) do

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.text "img_url"
    t.text "site_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members_plots", id: false, force: :cascade do |t|
    t.integer "member_id", null: false
    t.integer "plot_id", null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.integer "height"
    t.string "water"
    t.string "sunlight"
    t.integer "member_id"
    t.integer "plot_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plots", force: :cascade do |t|
    t.integer "garden_id"
    t.string "plot_name"
    t.boolean "occupied", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
