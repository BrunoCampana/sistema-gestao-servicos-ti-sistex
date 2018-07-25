class UltimaCorrecaoUserCurso4 < ActiveRecord::Migration[5.2]
  def change
    drop_table :instruendos_cursos
    create_table :instruendos_curso_ministrados do |t|
      t.references :usuario, index: true
      t.references :curso_ministrado, index: true
    end
  end
end
