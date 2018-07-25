class CreateVots < ActiveRecord::Migration[5.2]
  def change
    create_table :vots do |t|
      t.date :data_inicio
      t.date :data_termino
      t.integer :modo_transporte
      t.text :descricao
      t.text :remuneracao
      t.integer :pagamentos_realizados

      t.timestamps
    end
  end
end
