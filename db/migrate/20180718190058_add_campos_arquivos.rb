class AddCamposArquivos < ActiveRecord::Migration[5.2]
  def change
    add_column :fornecedors, :contrato, :string
    add_column :requisicao_link_proprios, :parecer, :string
    add_column :vots, :relatorio, :string
  end
end
