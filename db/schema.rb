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

ActiveRecord::Schema.define(version: 2018_10_24_045004) do

  create_table "clientes", force: :cascade do |t|
    t.integer "rfc"
    t.string "nombre_cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "clientes_id"
    t.index ["clientes_id"], name: "index_clientes_on_clientes_id"
  end

  create_table "detalle_ordens", force: :cascade do |t|
    t.integer "producto_id"
    t.integer "cantidad"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producto_id"], name: "index_detalle_ordens_on_producto_id"
  end

  create_table "ordens", force: :cascade do |t|
    t.integer "cliente_id"
    t.integer "num_orden"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_ordens_on_cliente_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre_producto"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
