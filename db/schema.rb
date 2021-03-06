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

ActiveRecord::Schema.define(version: 2020_08_04_172506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_pieces", force: :cascade do |t|
    t.string "name"
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["artist_id"], name: "index_art_pieces_on_artist_id"
    t.index ["user_id"], name: "index_art_pieces_on_user_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exhibitions", force: :cascade do |t|
    t.string "name"
    t.boolean "open"
    t.bigint "galerie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["galerie_id"], name: "index_exhibitions_on_galerie_id"
  end

  create_table "galeries", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_galeries_on_user_id"
  end

  create_table "showroom_pieces", force: :cascade do |t|
    t.string "position"
    t.bigint "showroom_id", null: false
    t.bigint "art_piece_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["art_piece_id"], name: "index_showroom_pieces_on_art_piece_id"
    t.index ["showroom_id"], name: "index_showroom_pieces_on_showroom_id"
  end

  create_table "showrooms", force: :cascade do |t|
    t.string "name"
    t.bigint "exhibition_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exhibition_id"], name: "index_showrooms_on_exhibition_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "art_pieces", "artists"
  add_foreign_key "art_pieces", "users"
  add_foreign_key "exhibitions", "galeries", column: "galerie_id"
  add_foreign_key "galeries", "users"
  add_foreign_key "showroom_pieces", "art_pieces"
  add_foreign_key "showroom_pieces", "showrooms"
  add_foreign_key "showrooms", "exhibitions"
end
