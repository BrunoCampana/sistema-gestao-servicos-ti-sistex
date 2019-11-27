class Alterartiporelacaoperfilcargo < ActiveRecord::Migration[5.2]
  def change
    remove_reference :cargos, :usuario, index:true, foreign_key:true
    create_join_table :cargos, :usuarios do |t|
      t.index :cargo_id
      t.index :usuario_id
    end
  end
end
