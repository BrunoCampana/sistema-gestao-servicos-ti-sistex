class CreateWorkstations < ActiveRecord::Migration[5.2]
  def change
    create_table :workstations do |t|
      t.string :nome
      t.string :modelo
      t.string :fabricante
      t.text :configuracao
      t.integer :tipo
      t.string :responsavel

      t.timestamps
    end
  end
end
