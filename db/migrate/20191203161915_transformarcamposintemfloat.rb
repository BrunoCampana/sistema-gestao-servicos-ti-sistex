class Transformarcamposintemfloat < ActiveRecord::Migration[5.2]
  def change
    change_column :pacotes_servicos, :velocidade_intranet, :float
    change_column :pacotes_servicos, :velocidade_internet, :float
    change_column :requisicao_link_proprios, :velocidade, :integer 
  end
end
