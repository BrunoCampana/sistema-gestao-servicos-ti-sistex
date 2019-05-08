class CreateSleqps < ActiveRecord::Migration[5.2]
  def change
    create_table :sleqps do |t|
      t.string :nome
      t.text :descricao
      t.string :responsavel
      t.text :configuracao
      t.string :local
      t.string :diagrama
      t.float :dimensao

      t.timestamps
    end

    add_reference :sleqps, :rede, foreign_key:true    
  end
end
