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

ActiveRecord::Schema.define(version: 2021_05_11_174143) do

  create_table "balance_criptomonedas", force: :cascade do |t|
    t.string "token"
    t.float "valor"
    t.integer "usuario_id", null: false
    t.integer "criptomoneda_token", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["criptomoneda_token"], name: "index_balance_criptomonedas_on_criptomoneda_token"
    t.index ["usuario_id"], name: "index_balance_criptomonedas_on_usuario_id"
  end

  create_table "balance_divisas", force: :cascade do |t|
    t.string "token_divisa"
    t.float "valor"
    t.integer "usuario_id", null: false
    t.integer "divisa_token", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["divisa_token"], name: "index_balance_divisas_on_divisa_token"
    t.index ["usuario_id"], name: "index_balance_divisas_on_usuario_id"
  end

  create_table "criptomonedas", primary_key: "token", force: :cascade do |t|
    t.string "nombre"
    t.float "valor_actual"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "divisas", primary_key: "token_divisa", force: :cascade do |t|
    t.string "nombre_divisa"
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "valor_historicos", force: :cascade do |t|
    t.datetime "fecha"
    t.float "valor"
    t.integer "criptomoneda_token", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["criptomoneda_token"], name: "index_valor_historicos_on_criptomoneda_token"
  end

  add_foreign_key "balance_criptomonedas", "criptomonedas", column: "criptomoneda_token", primary_key: "token"
  add_foreign_key "balance_criptomonedas", "usuarios"
  add_foreign_key "balance_divisas", "divisas", column: "divisa_token", primary_key: "token_divisa"
  add_foreign_key "balance_divisas", "usuarios"
  add_foreign_key "valor_historicos", "criptomonedas", column: "criptomoneda_token", primary_key: "token"
end
