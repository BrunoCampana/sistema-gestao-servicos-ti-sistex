class CreateCursoExternos < ActiveRecord::Migration[5.2]
  def change
    create_table :curso_externos do |t|
      t.string :nome
      t.integer :modalidade
      t.integer :carga_horaria
      t.text :descricao
      t.date :inicio
      t.date :termino
      t.string :certificado_conclusao
      t.integer :curso_concluido
      t.integer :conclusao_checada
      t.float :custo
      t.string :org_aplicadora

      t.timestamps
    end

    create_join_table :usuarios, :curso_externos do |t|
      t.index :usuario_id
      t.index :curso_externo_id
    end
  end
end
