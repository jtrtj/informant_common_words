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

ActiveRecord::Schema.define(version: 2018_10_29_031604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "representation_issue_words", force: :cascade do |t|
    t.integer "representation_id"
    t.bigint "word_id"
    t.index ["word_id"], name: "index_representation_issue_words_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "text"
    t.integer "representation_issue_count", default: 0
  end

  add_foreign_key "representation_issue_words", "words"
end
