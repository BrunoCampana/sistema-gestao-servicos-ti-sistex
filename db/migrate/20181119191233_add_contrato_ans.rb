class AddContratoAns < ActiveRecord::Migration[5.2]
  def change
    add_column :pacotes_servicos, :contrato, :string
  end
end
