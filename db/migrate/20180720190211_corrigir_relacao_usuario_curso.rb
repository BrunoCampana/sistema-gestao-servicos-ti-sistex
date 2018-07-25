class CorrigirRelacaoUsuarioCurso < ActiveRecord::Migration[5.2]
  def change
  drop_join_table :curso_ministrados, :usuarios
  end
end
