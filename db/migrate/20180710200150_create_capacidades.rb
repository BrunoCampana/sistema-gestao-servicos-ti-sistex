class CreateCapacidades < ActiveRecord::Migration[5.2]
  def change
    create_table :capacidades do |t|
      t.string :nome_recurso
      t.string :total_recurso
      t.string :empregado

      t.timestamps
    end
  end
end
