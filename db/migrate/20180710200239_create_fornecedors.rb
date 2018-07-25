class CreateFornecedors < ActiveRecord::Migration[5.2]
  def change
    create_table :fornecedors do |t|
      t.string :nome_fornecedor
      t.text :descricao_recurso
      t.string :codigo_contrato
      t.date :inicio_contrato
      t.date :termino_contrato

      t.timestamps
    end
  end
end
