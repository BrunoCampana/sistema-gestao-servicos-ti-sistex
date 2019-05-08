class CreateEquipamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :equipamentos do |t|
      t.string :nome
      t.string :fabricante
      t.string :modelo
      t.text :descricao
      t.text :configuracao
      t.string :responsavel
      t.integer :tipo

      t.timestamps
    end
    add_reference :equipamentos, :sleqp, foreign_key:true    

  end
end
