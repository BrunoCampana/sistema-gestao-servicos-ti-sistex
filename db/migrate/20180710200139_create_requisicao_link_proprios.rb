class CreateRequisicaoLinkProprios < ActiveRecord::Migration[5.2]
  def change
    create_table :requisicao_link_proprios do |t|
      t.integer :parecer_cta
      t.integer :parecer_citex
      t.string :status
      t.integer :possui_link_proprio
      t.string :velocidade
      t.string :prestador_sv
      t.integer :enlace
      t.date :data_inicio_contrato
      t.date :data_termino_contrato
      t.float :valor_mensal

      t.timestamps
    end
  end
end
