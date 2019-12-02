class Corrigirdetalhes < ActiveRecord::Migration[5.2]
  def change
    change_column :pacotes_servicos, :velocidade_intranet, :integer
  end
end
