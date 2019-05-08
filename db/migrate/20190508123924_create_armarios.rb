class CreateArmarios < ActiveRecord::Migration[5.2]
  def change
    create_table :armarios do |t|
      t.string :nome
      t.string :modelo
      t.string :fabricante
      t.text :descricao
      t.text :configuracao
      t.integer :dimensao
      t.string :diagrama
      t.string :responsavel

      t.timestamps
    end
    add_reference :armarios, :sleqp, foreign_key:true    

  end
end
