class Adcamposmilitar < ActiveRecord::Migration[5.2]
  def change
    add_column :usuarios, :nome_completo, :string
    add_column :usuarios, :idtmil, :string
    add_column :usuarios, :cpf, :string
  end
end
