class UltimaCorrecaoUserCurso3 < ActiveRecord::Migration[5.2]
  def change
    #drop_join_table :usuarios, :curso_ministrados
    #create_table :instrutors_curso_ministrados do |t|
    #  t.references :usuario, index: true
    #  t.references :curso_ministrado, index: true
    #end
    create_table :instruendos_curso_ministrados do |t|
      t.references :usuario, index: true
      t.references :curso_ministrado, index: true
    end
    drop_table :instruendos_cursos
  end
end
