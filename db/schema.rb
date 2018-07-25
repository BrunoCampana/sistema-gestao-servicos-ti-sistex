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

ActiveRecord::Schema.define(version: 2018_07_24_203238) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "capacidades", force: :cascade do |t|
    t.string "nome_recurso"
    t.string "total_recurso"
    t.string "empregado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
    t.index ["usuario_id"], name: "index_cargos_on_usuario_id"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "subordinacao"
    t.string "uasg"
    t.integer "possui_od"
    t.text "missao_fim_om"
    t.string "efetivo"
    t.string "telefone_ctt_om"
    t.string "email"
    t.text "anotacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "inventario"
    t.integer "cidade_id"
    t.index ["cidade_id"], name: "index_clientes_on_cidade_id"
  end

  create_table "clientes_indisponibilidades", id: false, force: :cascade do |t|
    t.integer "cliente_id", null: false
    t.integer "indisponibilidade_id", null: false
    t.index ["cliente_id"], name: "index_clientes_indisponibilidades_on_cliente_id"
    t.index ["indisponibilidade_id"], name: "index_clientes_indisponibilidades_on_indisponibilidade_id"
  end

  create_table "curso_externos", force: :cascade do |t|
    t.string "nome"
    t.integer "modalidade"
    t.integer "carga_horaria"
    t.text "descricao"
    t.date "inicio"
    t.date "termino"
    t.string "certificado_conclusao"
    t.integer "curso_concluido"
    t.integer "conclusao_checada"
    t.float "custo"
    t.string "org_aplicadora"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curso_externos_usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "curso_externo_id", null: false
    t.index ["curso_externo_id"], name: "index_curso_externos_usuarios_on_curso_externo_id"
    t.index ["usuario_id"], name: "index_curso_externos_usuarios_on_usuario_id"
  end

  create_table "curso_ministrados", force: :cascade do |t|
    t.string "nome"
    t.integer "modalidade"
    t.integer "carga_horaria"
    t.string "area_conhecimento"
    t.text "descricao_conhecimento"
    t.date "inicio"
    t.date "termino"
    t.string "pladis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encargos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encargos_usuarios", id: false, force: :cascade do |t|
    t.integer "encargo_id", null: false
    t.integer "usuario_id", null: false
    t.index ["encargo_id"], name: "index_encargos_usuarios_on_encargo_id"
    t.index ["usuario_id"], name: "index_encargos_usuarios_on_usuario_id"
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome_fornecedor"
    t.text "descricao_recurso"
    t.string "codigo_contrato"
    t.date "inicio_contrato"
    t.date "termino_contrato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contrato"
  end

  create_table "habilidade_adquiridas", force: :cascade do |t|
    t.integer "nivel_habilidade"
    t.string "curso_realizado"
    t.date "data_adquiriu_habilidade"
    t.text "descricao_habilidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "perfil_profissional_id"
    t.integer "habilidade_id"
    t.index ["habilidade_id"], name: "index_habilidade_adquiridas_on_habilidade_id"
    t.index ["perfil_profissional_id"], name: "index_habilidade_adquiridas_on_perfil_profissional_id"
  end

  create_table "habilidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "descricao"
  end

  create_table "habilidades_usuarios", id: false, force: :cascade do |t|
    t.integer "habilidade_id", null: false
    t.integer "usuario_id", null: false
    t.index ["habilidade_id"], name: "index_habilidades_usuarios_on_habilidade_id"
    t.index ["usuario_id"], name: "index_habilidades_usuarios_on_usuario_id"
  end

  create_table "indisponibilidades", force: :cascade do |t|
    t.datetime "inicio"
    t.datetime "termino"
    t.integer "tipo"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indisponibilidades_motivos", id: false, force: :cascade do |t|
    t.integer "indisponibilidade_id", null: false
    t.integer "motivo_id", null: false
    t.index ["indisponibilidade_id"], name: "index_indisponibilidades_motivos_on_indisponibilidade_id"
    t.index ["motivo_id"], name: "index_indisponibilidades_motivos_on_motivo_id"
  end

  create_table "indisponibilidades_parados", id: false, force: :cascade do |t|
    t.integer "indisponibilidade_id", null: false
    t.integer "parado_id", null: false
    t.index ["indisponibilidade_id"], name: "index_indisponibilidades_parados_on_indisponibilidade_id"
    t.index ["parado_id"], name: "index_indisponibilidades_parados_on_parado_id"
  end

  create_table "instruendos_curso_ministrados", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "curso_ministrado_id"
    t.index ["curso_ministrado_id"], name: "index_instruendos_curso_ministrados_on_curso_ministrado_id"
    t.index ["usuario_id"], name: "index_instruendos_curso_ministrados_on_usuario_id"
  end

  create_table "instrutors_curso_ministrados", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "curso_ministrado_id"
    t.index ["curso_ministrado_id"], name: "index_instrutors_curso_ministrados_on_curso_ministrado_id"
    t.index ["usuario_id"], name: "index_instrutors_curso_ministrados_on_usuario_id"
  end

  create_table "motivos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacotes_servicos", force: :cascade do |t|
    t.integer "intranet"
    t.integer "internet"
    t.string "velocidade_intranet"
    t.integer "velocidade_internet"
    t.integer "tipo_banda"
    t.integer "meio_de_acesso"
    t.integer "tipo_link"
    t.string "latencia"
    t.string "jitter"
    t.string "disponibilidade"
    t.integer "link_proprio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.index ["cliente_id"], name: "index_pacotes_servicos_on_cliente_id"
  end

  create_table "parados", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perfil_profissionals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id"
    t.integer "cargo_id"
    t.index ["cargo_id"], name: "index_perfil_profissionals_on_cargo_id"
    t.index ["usuario_id"], name: "index_perfil_profissionals_on_usuario_id"
  end

  create_table "requisicao_link_proprios", force: :cascade do |t|
    t.integer "parecer_cta"
    t.integer "parecer_citex"
    t.string "status"
    t.integer "possui_link_proprio"
    t.string "velocidade"
    t.string "prestador_sv"
    t.integer "enlace"
    t.date "data_inicio_contrato"
    t.date "data_termino_contrato"
    t.float "valor_mensal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.string "parecer"
    t.index ["cliente_id"], name: "index_requisicao_link_proprios_on_cliente_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.integer "status"
    t.integer "tipo"
    t.text "observacoes"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "cliente_id"
    t.index ["cliente_id"], name: "index_usuarios_on_cliente_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "usuarios_vots", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "vot_id", null: false
    t.index ["usuario_id"], name: "index_usuarios_vots_on_usuario_id"
    t.index ["vot_id"], name: "index_usuarios_vots_on_vot_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  create_table "vots", force: :cascade do |t|
    t.date "data_inicio"
    t.date "data_termino"
    t.integer "modo_transporte"
    t.text "descricao"
    t.text "remuneracao"
    t.integer "pagamentos_realizados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.string "relatorio"
    t.index ["cliente_id"], name: "index_vots_on_cliente_id"
  end

end
