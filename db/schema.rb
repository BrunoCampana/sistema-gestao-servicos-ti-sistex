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

ActiveRecord::Schema.define(version: 2019_12_04_232910) do

  create_table "acessos", force: :cascade do |t|
    t.string "nome"
    t.integer "status"
    t.integer "tipo"
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
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_acessos_on_email", unique: true
    t.index ["reset_password_token"], name: "index_acessos_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_acessos_on_unlock_token", unique: true
  end

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

  create_table "ans_tis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.string "titulo"
    t.text "descricao"
    t.string "vigencia"
    t.string "contrato"
    t.integer "pacotes_servico_id"
    t.index ["cliente_id"], name: "index_ans_tis_on_cliente_id"
    t.index ["pacotes_servico_id"], name: "index_ans_tis_on_pacotes_servico_id"
  end

  create_table "ans_tis_servicos", id: false, force: :cascade do |t|
    t.integer "ans_ti_id", null: false
    t.integer "servico_id", null: false
    t.index ["ans_ti_id"], name: "index_ans_tis_servicos_on_ans_ti_id"
    t.index ["servico_id"], name: "index_ans_tis_servicos_on_servico_id"
  end

  create_table "armarios", force: :cascade do |t|
    t.string "nome"
    t.string "modelo"
    t.string "fabricante"
    t.text "descricao"
    t.text "configuracao"
    t.integer "dimensao"
    t.string "diagrama"
    t.string "responsavel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sleqp_id"
    t.index ["sleqp_id"], name: "index_armarios_on_sleqp_id"
  end

  create_table "capacidades", force: :cascade do |t|
    t.string "nome_recurso"
    t.float "total_recurso"
    t.float "empregado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "capacidades_servicos", id: false, force: :cascade do |t|
    t.integer "servico_id", null: false
    t.integer "capacidade_id", null: false
    t.index ["capacidade_id"], name: "index_capacidades_servicos_on_capacidade_id"
    t.index ["servico_id"], name: "index_capacidades_servicos_on_servico_id"
  end

  create_table "cargos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos_habilidades", id: false, force: :cascade do |t|
    t.integer "habilidade_id", null: false
    t.integer "cargo_id", null: false
    t.index ["habilidade_id"], name: "index_cargos_habilidades_on_habilidade_id"
    t.index [nil], name: "index_cargos_habilidades_on_usuario_id"
  end

  create_table "cargos_usuarios", id: false, force: :cascade do |t|
    t.integer "cargo_id", null: false
    t.integer "usuario_id", null: false
    t.index ["cargo_id"], name: "index_cargos_usuarios_on_cargo_id"
    t.index ["usuario_id"], name: "index_cargos_usuarios_on_usuario_id"
  end

  create_table "cert_tis", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cert_tis_usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "cert_ti_id", null: false
    t.index ["cert_ti_id"], name: "index_cert_tis_usuarios_on_cert_ti_id"
    t.index ["usuario_id"], name: "index_cert_tis_usuarios_on_usuario_id"
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
    t.text "missao_fim_om"
    t.string "efetivo"
    t.string "telefone_ctt_om"
    t.string "email"
    t.text "anotacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "inventario"
    t.integer "cidade_id"
    t.string "nome_ch_sec_ti"
    t.string "nome_cmt_om"
    t.string "cel_cmt_om"
    t.integer "tipo", default: 0
    t.boolean "possui_posto_radio", default: false
    t.text "descricao_posto_radio"
    t.integer "qtd_operadores_radio"
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
    t.integer "tipo_cpc"
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
    t.integer "tipo_cpc"
  end

  create_table "curso_ministrados_talentos", id: false, force: :cascade do |t|
    t.integer "curso_ministrado_id", null: false
    t.integer "talento_id", null: false
    t.index ["curso_ministrado_id"], name: "index_curso_ministrados_talentos_on_curso_ministrado_id"
    t.index ["talento_id"], name: "index_curso_ministrados_talentos_on_talento_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cursos_usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "curso_id", null: false
    t.index ["curso_id"], name: "index_cursos_usuarios_on_curso_id"
    t.index ["usuario_id"], name: "index_cursos_usuarios_on_usuario_id"
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

  create_table "equipamentos", force: :cascade do |t|
    t.string "nome"
    t.string "fabricante"
    t.string "modelo"
    t.text "descricao"
    t.text "configuracao"
    t.string "responsavel"
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sleqp_id"
    t.index ["sleqp_id"], name: "index_equipamentos_on_sleqp_id"
  end

  create_table "fisc_substs_fornecedors", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "fornecedor_id"
    t.index ["fornecedor_id"], name: "index_fisc_substs_fornecedors_on_fornecedor_id"
    t.index ["usuario_id"], name: "index_fisc_substs_fornecedors_on_usuario_id"
  end

  create_table "fisc_titulars_fornecedors", force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "fornecedor_id"
    t.index ["fornecedor_id"], name: "index_fisc_titulars_fornecedors_on_fornecedor_id"
    t.index ["usuario_id"], name: "index_fisc_titulars_fornecedors_on_usuario_id"
  end

  create_table "formacao_acads", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formacao_acads_talentos", id: false, force: :cascade do |t|
    t.integer "formacao_acad_id", null: false
    t.integer "talento_id", null: false
    t.index ["formacao_acad_id"], name: "index_formacao_acads_talentos_on_formacao_acad_id"
    t.index ["talento_id"], name: "index_formacao_acads_talentos_on_talento_id"
  end

  create_table "formacao_acads_usuarios", id: false, force: :cascade do |t|
    t.integer "formacao_acad_id", null: false
    t.integer "usuario_id", null: false
    t.index ["formacao_acad_id"], name: "index_formacao_acads_usuarios_on_formacao_acad_id"
    t.index ["usuario_id"], name: "index_formacao_acads_usuarios_on_usuario_id"
  end

  create_table "formacao_mils", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formacao_mils_talentos", id: false, force: :cascade do |t|
    t.integer "formacao_mil_id", null: false
    t.integer "talento_id", null: false
    t.index ["formacao_mil_id"], name: "index_formacao_mils_talentos_on_formacao_mil_id"
    t.index ["talento_id"], name: "index_formacao_mils_talentos_on_talento_id"
  end

  create_table "formacao_mils_usuarios", id: false, force: :cascade do |t|
    t.integer "formacao_mil_id", null: false
    t.integer "usuario_id", null: false
    t.index ["formacao_mil_id"], name: "index_formacao_mils_usuarios_on_formacao_mil_id"
    t.index ["usuario_id"], name: "index_formacao_mils_usuarios_on_usuario_id"
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
    t.string "preposto"
    t.text "tels_ctt"
    t.text "emails_ctt"
    t.integer "situacao"
    t.text "observacoes"
  end

  create_table "fornecedors_servicos", id: false, force: :cascade do |t|
    t.integer "servico_id", null: false
    t.integer "fornecedor_id", null: false
    t.index ["fornecedor_id"], name: "index_fornecedors_servicos_on_fornecedor_id"
    t.index ["servico_id"], name: "index_fornecedors_servicos_on_servico_id"
  end

  create_table "habilidades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "descricao"
  end

  create_table "habilidades_talentos", id: false, force: :cascade do |t|
    t.integer "habilidade_id", null: false
    t.integer "talento_id", null: false
    t.index ["habilidade_id"], name: "index_habilidades_talentos_on_habilidade_id"
    t.index ["talento_id"], name: "index_habilidades_talentos_on_talento_id"
  end

  create_table "habilidades_usuarios", id: false, force: :cascade do |t|
    t.integer "habilidade_id", null: false
    t.integer "usuario_id", null: false
    t.index ["habilidade_id"], name: "index_habilidades_usuarios_on_habilidade_id"
    t.index ["usuario_id"], name: "index_habilidades_usuarios_on_usuario_id"
  end

  create_table "hardwares", force: :cascade do |t|
    t.string "nome"
    t.string "modelo"
    t.string "fabricante"
    t.string "descricao"
    t.text "configuracao"
    t.integer "tipo"
    t.string "responsavel"
    t.integer "dimensao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "armario_id"
    t.index ["armario_id"], name: "index_hardwares_on_armario_id"
  end

  create_table "hierarqs", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idiomas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idiomas_usuarios", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "idioma_id", null: false
    t.index ["idioma_id"], name: "index_idiomas_usuarios_on_idioma_id"
    t.index ["usuario_id"], name: "index_idiomas_usuarios_on_usuario_id"
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

  create_table "indisponibilidades_servicos", id: false, force: :cascade do |t|
    t.integer "servico_id", null: false
    t.integer "indisponibilidade_id", null: false
    t.index ["indisponibilidade_id"], name: "index_indisponibilidades_servicos_on_indisponibilidade_id"
    t.index ["servico_id"], name: "index_indisponibilidades_servicos_on_servico_id"
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

  create_table "mudancas", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "executor"
    t.string "autorizador"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacotes_servicos", force: :cascade do |t|
    t.float "velocidade_intranet"
    t.float "velocidade_internet"
    t.integer "tipo_banda"
    t.integer "meio_de_acesso"
    t.integer "tipo_link"
    t.float "latencia"
    t.float "jitter"
    t.string "disponibilidade"
    t.integer "link_proprio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.text "obs_dados"
    t.integer "ramal_ritex"
    t.integer "ramal_voip"
    t.text "obs_tel"
    t.integer "sipam"
    t.integer "gesac"
    t.index ["cliente_id"], name: "index_pacotes_servicos_on_cliente_id"
  end

  create_table "pacotes_servicos_servicos", id: false, force: :cascade do |t|
    t.integer "servico_id", null: false
    t.integer "pacotes_servico_id", null: false
    t.index ["pacotes_servico_id"], name: "index_pacotes_servicos_servicos_on_pacotes_servico_id"
    t.index ["servico_id"], name: "index_pacotes_servicos_servicos_on_servico_id"
  end

  create_table "parados", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rails_admin_settings", force: :cascade do |t|
    t.boolean "enabled", default: true
    t.string "kind", default: "string", null: false
    t.string "ns", default: "main"
    t.string "key", null: false
    t.text "raw"
    t.string "label"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["key"], name: "index_rails_admin_settings_on_key"
    t.index ["ns", "key"], name: "index_rails_admin_settings_on_ns_and_key", unique: true
  end

  create_table "redes", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "responsavel"
    t.text "configuracao"
    t.string "diagrama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requisicao_link_proprios", force: :cascade do |t|
    t.integer "parecer_cta"
    t.integer "parecer_citex"
    t.string "status"
    t.integer "possui_link_proprio"
    t.integer "velocidade"
    t.string "prestador_sv"
    t.integer "enlace"
    t.date "data_inicio_contrato"
    t.date "data_termino_contrato"
    t.float "valor_mensal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.string "parecer"
    t.string "descricao"
    t.string "origem_recurso"
    t.date "inicio_parecer"
    t.index ["cliente_id"], name: "index_requisicao_link_proprios_on_cliente_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sleqps", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.string "responsavel"
    t.text "configuracao"
    t.string "local"
    t.string "diagrama"
    t.float "dimensao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rede_id"
    t.index ["rede_id"], name: "index_sleqps_on_rede_id"
  end

  create_table "softwares", force: :cascade do |t|
    t.string "nome"
    t.string "modelo"
    t.string "fabricante"
    t.string "descricao"
    t.text "configuracao"
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hardware_id"
    t.index ["hardware_id"], name: "index_softwares_on_hardware_id"
  end

  create_table "talentos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.integer "hierarq_id"
    t.index ["cliente_id"], name: "index_talentos_on_cliente_id"
    t.index ["hierarq_id"], name: "index_talentos_on_hierarq_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.text "observacoes"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.integer "cliente_id"
    t.integer "hierarq_id"
    t.string "nome_completo"
    t.string "idtmil"
    t.string "cpf"
    t.text "cargos_exercidos"
    t.text "projetos_que_participou"
    t.integer "situacao", default: 1
    t.index ["cliente_id"], name: "index_usuarios_on_cliente_id"
    t.index ["hierarq_id"], name: "index_usuarios_on_hierarq_id"
  end

  create_table "usuarios_vots", id: false, force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "vot_id", null: false
    t.index ["usuario_id"], name: "index_usuarios_vots_on_usuario_id"
    t.index ["vot_id"], name: "index_usuarios_vots_on_vot_id"
  end

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key"
    t.index ["version_id"], name: "index_version_associations_on_version_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.integer "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
    t.index ["transaction_id"], name: "index_versions_on_transaction_id"
  end

  create_table "vms", force: :cascade do |t|
    t.string "nome"
    t.string "os"
    t.string "hwvirtual"
    t.text "descricao"
    t.text "servicos"
    t.string "ip"
    t.string "dono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "titulo"
    t.index ["cliente_id"], name: "index_vots_on_cliente_id"
  end

  create_table "vpns", force: :cascade do |t|
    t.string "dono_da_conta"
    t.text "motivo_da_conta"
    t.text "caracteristicas"
    t.string "termo_responsabilidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pacotes_servico_id"
    t.index ["pacotes_servico_id"], name: "index_vpns_on_pacotes_servico_id"
  end

  create_table "workstations", force: :cascade do |t|
    t.string "nome"
    t.string "modelo"
    t.string "fabricante"
    t.text "configuracao"
    t.integer "tipo"
    t.string "responsavel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
