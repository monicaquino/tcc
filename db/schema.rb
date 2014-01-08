# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140107043109) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "sexo"
    t.date     "data_nas"
    t.decimal  "telefone"
    t.string   "estado"
    t.string   "cidade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "anamnese_id"
    t.integer  "aluno_id"
  end

  create_table "anamneses", force: true do |t|
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "antropometria", force: true do |t|
    t.float    "massa"
    t.float    "estatura"
    t.float    "pescoco"
    t.float    "ombro"
    t.float    "torax"
    t.float    "cintura"
    t.float    "abdomen"
    t.float    "quadril"
    t.float    "braco_esq"
    t.float    "antebraco_esq"
    t.float    "coxa_esq"
    t.float    "panturrilha_esq"
    t.float    "coxa_dir"
    t.float    "braco_dir"
    t.float    "antebraco_dir"
    t.float    "panturrilha_dir"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aluno_id"
  end

  add_index "antropometria", ["aluno_id"], name: "index_antropometria_on_aluno_id"

  create_table "antropos", force: true do |t|
    t.float    "estatura"
    t.float    "pescoco"
    t.float    "ombro"
    t.float    "torax"
    t.float    "cintura"
    t.float    "abdomen"
    t.float    "quadril"
    t.float    "braco_esq"
    t.float    "antebraco_esq"
    t.float    "coxa_esq"
    t.float    "panturrilha_esq"
    t.float    "braco_dir"
    t.float    "antebraco_dir"
    t.float    "panturrilha_dir"
    t.float    "coxa_dir"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "antropos", ["aluno_id"], name: "index_antropos_on_aluno_id"

  create_table "avaliacaos", force: true do |t|
    t.integer  "pessoa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calculo_imcs", force: true do |t|
    t.float    "altura"
    t.float    "peso"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "calculo_imcs", ["aluno_id"], name: "index_calculo_imcs_on_aluno_id"

  create_table "cintura_quadrils", force: true do |t|
    t.float    "cintura"
    t.float    "quadril"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cintura_quadrils", ["aluno_id"], name: "index_cintura_quadrils_on_aluno_id"

  create_table "imcs", force: true do |t|
    t.float    "peso"
    t.float    "altura"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aluno_id"
  end

  add_index "imcs", ["aluno_id"], name: "index_imcs_on_aluno_id"

  create_table "percentual_gorduras", force: true do |t|
    t.float    "triceps"
    t.float    "supra_f"
    t.float    "supra_m"
    t.float    "abdomen"
    t.float    "coxa"
    t.float    "subescapular"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "percentual_gorduras", ["aluno_id"], name: "index_percentual_gorduras_on_aluno_id"

  create_table "percentuals", force: true do |t|
    t.string   "triceps"
    t.string   "supra_f"
    t.string   "supra_m"
    t.string   "abdomen"
    t.string   "coxa"
    t.string   "subescapular"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "percentuals", ["aluno_id"], name: "index_percentuals_on_aluno_id"

  create_table "pessoas", force: true do |t|
    t.string   "nome"
    t.date     "data_nas"
    t.string   "telefone"
    t.string   "sexo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "relacaos", force: true do |t|
    t.float    "cintura"
    t.float    "quadril"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "aluno_id"
  end

  add_index "relacaos", ["aluno_id"], name: "index_relacaos_on_aluno_id"

  create_table "teste_anamneses", force: true do |t|
    t.text     "meta"
    t.string   "condicionamento"
    t.string   "tipo_sanguineo"
    t.string   "anemia"
    t.string   "fumante"
    t.text     "alergia"
    t.text     "doenca"
    t.text     "lesao"
    t.text     "cirurgia"
    t.text     "medicacao"
    t.string   "emergencia"
    t.string   "telefone"
    t.text     "observacao"
    t.text     "dieta"
    t.float    "peso"
    t.float    "altura"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teste_anamneses", ["aluno_id"], name: "index_teste_anamneses_on_aluno_id"

  create_table "testes", force: true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pessoa_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vo2maximos", force: true do |t|
    t.float    "distancia"
    t.integer  "aluno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vo2maximos", ["aluno_id"], name: "index_vo2maximos_on_aluno_id"

end
