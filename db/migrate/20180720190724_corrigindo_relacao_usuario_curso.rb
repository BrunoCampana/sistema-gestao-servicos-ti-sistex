class CorrigindoRelacaoUsuarioCurso < ActiveRecord::Migration[5.2]
  def change
    change_table :curso_ministrados do |t|
      t.references :instrutor
      t.references :instruendo
    end

    add_foreign_key :curso_ministrados, :usuarios, column: :instrutor_id,
    primary_key: :id
    add_foreign_key :curso_ministrados, :usuarios, column: :instruendo_id,
    primary_key: :id
  end
end
