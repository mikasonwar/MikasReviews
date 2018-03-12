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

ActiveRecord::Schema.define(version: 20180123192326) do

  create_table "classificacaos", force: :cascade do |t|
    t.integer "classificacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conta", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "tipo", default: "user"
    t.boolean "ativo", default: false
    t.datetime "ativado_em"
    t.string "ativo_digest"
    t.string "foto"
    t.string "nickname"
    t.boolean "verificado", default: false
    t.boolean "newsletter", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_conta_on_email", unique: true
  end

  create_table "jogos", force: :cascade do |t|
    t.string "nome"
    t.decimal "preco", precision: 8, scale: 2
    t.text "descricao"
    t.string "developer"
    t.integer "idsteam"
    t.boolean "steam"
    t.date "data_de_lancamento"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noticia", force: :cascade do |t|
    t.string "nome"
    t.text "texto"
    t.text "descricao"
    t.date "data"
    t.string "tags"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "texto"
    t.integer "classificacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
