class CreateHardwares < ActiveRecord::Migration[5.2]
  def change
    create_table :hardwares do |t|
      t.string :nome
      t.string :modelo
      t.string :fabricante
      t.string :descricao
      t.text :configuracao
      t.integer :tipo
      t.string :responsavel
      t.integer :dimensao

      t.timestamps
    end
    add_reference :hardwares, :armario, foreign_key:true    

  end
end
