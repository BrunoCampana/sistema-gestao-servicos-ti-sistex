class Corrigirpacotesv < ActiveRecord::Migration[5.2]
  def change
    remove_column :pacotes_servicos, :qtd_partilham, :integer
  end
end
