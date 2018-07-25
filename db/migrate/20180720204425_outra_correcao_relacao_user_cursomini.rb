class OutraCorrecaoRelacaoUserCursomini < ActiveRecord::Migration[5.2]
  def change
    remove_reference :curso_ministrados, :instrutor, index:true,
    foreign_key:true
    remove_reference :curso_ministrados, :instruendo, index:true,
    foreign_key:true
    remove_foreign_key :curso_ministrados, :usuarios
    remove_foreign_key :curso_ministrados, :usuarios

    create_join_table :usuarios, :curso_ministrados do |t|
      t.index :usuario_id
      t.index :curso_ministrado_id
    end
  end
end
