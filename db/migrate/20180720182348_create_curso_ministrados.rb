class CreateCursoMinistrados < ActiveRecord::Migration[5.2]
  def change
    create_table :curso_ministrados do |t|
      t.string :nome
      t.integer :modalidade
      t.integer :carga_horaria
      t.string :area_conhecimento
      t.text :descricao_conhecimento
      t.date :inicio
      t.date :termino
      t.string :pladis
      t.timestamps
    end

    create_join_table :usuarios, :curso_ministrados do |t|
      t.index :usuario_id
      t.index :curso_ministrado_id
    end

  end
end
