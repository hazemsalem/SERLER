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

ActiveRecord::Schema.define(version: 20160911135908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "evidence_source_authors", force: :cascade do |t|
    t.integer  "evidence_source_id"
    t.string   "name"
    t.string   "name_abbr"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["evidence_source_id"], name: "index_evidence_source_authors_on_evidence_source_id", using: :btree
    t.index ["name"], name: "index_evidence_source_authors_on_name", using: :btree
    t.index ["name_abbr"], name: "index_evidence_source_authors_on_name_abbr", using: :btree
  end

  create_table "evidence_sources", force: :cascade do |t|
    t.integer  "committer"
    t.string   "state"
    t.string   "category"
    t.string   "title"
    t.integer  "year"
    t.string   "source_title"
    t.string   "publisher"
    t.string   "URL"
    t.string   "DOI"
    t.integer  "volume_number"
    t.integer  "issue_number"
    t.string   "page_str"
    t.integer  "page_begin"
    t.integer  "page_cease"
    t.integer  "rating_tenth"
    t.integer  "rating_tenth_avg"
    t.integer  "rating_tenth_moderated"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["DOI"], name: "index_evidence_sources_on_DOI", using: :btree
    t.index ["committer"], name: "index_evidence_sources_on_committer", using: :btree
    t.index ["page_begin"], name: "index_evidence_sources_on_page_begin", using: :btree
    t.index ["page_cease"], name: "index_evidence_sources_on_page_cease", using: :btree
    t.index ["publisher"], name: "index_evidence_sources_on_publisher", using: :btree
    t.index ["rating_tenth"], name: "index_evidence_sources_on_rating_tenth", using: :btree
    t.index ["source_title"], name: "index_evidence_sources_on_source_title", using: :btree
    t.index ["state"], name: "index_evidence_sources_on_state", using: :btree
    t.index ["title"], name: "index_evidence_sources_on_title", using: :btree
    t.index ["year"], name: "index_evidence_sources_on_year", using: :btree
  end

  add_foreign_key "evidence_source_authors", "evidence_sources"
end
