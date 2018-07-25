class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.integer :cargo
      t.integer :status
      t.integer :tipo
      t.integer :encargo
      t.text :observacoes
      t.string :telefone

      t.timestamps
    end
  end
end
