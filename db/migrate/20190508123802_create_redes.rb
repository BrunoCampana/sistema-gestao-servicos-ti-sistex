class CreateRedes < ActiveRecord::Migration[5.2]
  def change
    create_table :redes do |t|
      t.string :nome
      t.text :descricao
      t.string :responsavel
      t.text :configuracao
      t.string :diagrama

      t.timestamps
    end
  end
end
