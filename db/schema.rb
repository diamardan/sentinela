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

ActiveRecord::Schema.define(version: 20170611024533) do

  create_table "calles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "id_fraccionamiento"
    t.string   "nombre_calle"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "casas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "casa"
    t.integer  "id_fraccionamiento"
    t.string   "calle"
    t.string   "numero"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "fraccionamientos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "clave"
    t.string   "nombre"
    t.integer  "numero_casas"
    t.integer  "estado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "numeros_casas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "id_fraccionamiento"
    t.integer  "id_calle"
    t.string   "numero"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "sentinela_usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "usuario"
    t.string   "password"
    t.string   "enc_password"
    t.string   "email"
    t.string   "celular"
    t.integer  "fraccionamiento"
    t.string   "domicilio"
    t.string   "calle"
    t.string   "numero"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "nombre",                 default: "", null: false
    t.string   "apellidos",              default: "", null: false
    t.string   "usuario"
    t.string   "password",               default: "", null: false
    t.string   "celular"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "rol",                    default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "visitas_registros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fecha"
    t.string   "hora"
    t.string   "casa"
    t.string   "nombre_visitante"
    t.string   "apellidos_visitante"
    t.integer  "tipo_visita"
    t.string   "foto_identificacion"
    t.string   "foto_placa"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
