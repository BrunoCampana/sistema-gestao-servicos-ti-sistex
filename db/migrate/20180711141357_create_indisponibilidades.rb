class CreateIndisponibilidades < ActiveRecord::Migration[5.2]
  def change
    create_table :indisponibilidades do |t|
      t.timestamp :inicio
      t.timestamp :termino
      t.integer :tipo
      t.text :observacoes

      t.timestamps
    end
  end
end
