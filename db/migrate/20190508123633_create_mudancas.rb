class CreateMudancas < ActiveRecord::Migration[5.2]
  def change
    create_table :mudancas do |t|
      t.string :nome
      t.text :descricao
      t.string :executor
      t.string :autorizador
      t.integer :status

      t.timestamps
    end
  end
end
