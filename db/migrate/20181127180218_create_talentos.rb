class CreateTalentos < ActiveRecord::Migration[5.2]
  def change
    create_table :talentos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :observacoes
      t.timestamps
    end

    add_reference :talentos, :formacao_mil, foreign_key:true
    add_reference :talentos, :formacao_acad, foreign_key:true
    add_reference :talentos, :cliente, foreign_key:true
    add_reference :talentos, :hierarq, foreign_key:true

    create_join_table :usuarios, :talentos do |t|
      t.index :usuario_id
      t.index :talento_id
    end
  end
end
