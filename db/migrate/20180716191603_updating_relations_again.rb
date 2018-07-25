class UpdatingRelationsAgain < ActiveRecord::Migration[5.2]
  def change



    create_join_table :clientes, :indisponibilidades do |t|
      t.index :cliente_id
      t.index :indisponibilidade_id
    end
  end
end
