class CreateServicos < ActiveRecord::Migration[5.2]
  def change
    create_table :servicos do |t|
      t.string :nome
      t.timestamps
    end
    create_join_table :servicos, :pacotes_servicos do |t|
      t.index :servico_id
      t.index :pacotes_servico_id
    end
    create_join_table :servicos, :fornecedors do |t|
      t.index :servico_id
      t.index :fornecedor_id
    end
    create_join_table :servicos, :capacidades do |t|
      t.index :servico_id
      t.index :capacidade_id
    end
    create_join_table :servicos, :indisponibilidades do |t|
      t.index :servico_id
      t.index :indisponibilidade_id
    end
  end
end
