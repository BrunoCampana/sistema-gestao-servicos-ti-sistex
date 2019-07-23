class Adcamposfornecedor < ActiveRecord::Migration[5.2]
  def change
    add_column :fornecedors, :tels_ctt, :text
    add_column :fornecedors, :emails_ctt, :text
    remove_column :fornecedors, :contato, :string
    add_column :fornecedors, :situacao, :integer
    add_column :fornecedors, :observacoes, :text

    create_join_table :fornecedors, :usuarios do |t|
      t.index :fornecedor_id
      t.index :usuario_id
    end
  end
end
