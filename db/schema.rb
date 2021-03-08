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

ActiveRecord::Schema.define(version: 2021_03_07_160955) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "ms_kodes", force: :cascade do |t|
    t.string "kode"
    t.string "keterangan"
    t.integer "skor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ms_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name", default: "", null: false
    t.string "role", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "agama"
    t.index ["email"], name: "index_ms_users_on_email", unique: true
  end

  create_table "tr_esds", force: :cascade do |t|
    t.string "tanggal"
    t.string "esensi_esd"
    t.string "jenis_kegiatan"
    t.string "bukti"
    t.string "nama"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tr_motivasis", force: :cascade do |t|
    t.string "tanggal"
    t.string "materi"
    t.string "pemateri"
    t.string "ringkasan"
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tr_phbs", force: :cascade do |t|
    t.string "tanggal_olahraga"
    t.string "aktifitas"
    t.string "durasi"
    t.string "tanggal_makan"
    t.string "nama"
    t.string "status"
    t.string "karbohidrat"
    t.string "protein"
    t.string "sayur"
    t.string "buah"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tr_shalat_dhuhas", force: :cascade do |t|
    t.string "tanggal"
    t.string "status"
    t.string "nama"
    t.string "kode_shalat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tr_shalat_fardus", force: :cascade do |t|
    t.string "tanggal"
    t.string "status"
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tr_shalat_jumats", force: :cascade do |t|
    t.string "tanggal"
    t.string "status"
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tr_sikaps", force: :cascade do |t|
    t.string "tanggal"
    t.string "jenis_kode"
    t.string "kode"
    t.string "saksi"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nama"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
