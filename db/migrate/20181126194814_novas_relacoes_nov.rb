class NovasRelacoesNov < ActiveRecord::Migration[5.2]
  def change
    create_join_table :usuarios, :cert_tis do |t|
      t.index :usuario_id
      t.index :cert_ti_id
    end

    create_join_table :usuarios, :cursos do |t|
      t.index :curso_id
      t.index :usuario_id
    end

    create_join_table :usuarios, :idiomas do |t|
      t.index :idioma_id
      t.index :usuario_id
    end
  end
end
