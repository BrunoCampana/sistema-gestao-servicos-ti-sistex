class Aumentarpacotesv < ActiveRecord::Migration[5.2]
  def change
    add_column :pacotes_servicos, :sipam, :integer
    add_column :pacotes_servicos, :gesac, :integer
  end
end
