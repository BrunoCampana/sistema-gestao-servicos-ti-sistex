class CreateSoftwares < ActiveRecord::Migration[5.2]
  def change
    create_table :softwares do |t|
      t.string :nome
      t.string :modelo
      t.string :fabricante
      t.string :descricao
      t.text :configuracao
      t.integer :tipo

      t.timestamps
    end
    add_reference :softwares, :hardware, foreign_key:true    

  end
end
