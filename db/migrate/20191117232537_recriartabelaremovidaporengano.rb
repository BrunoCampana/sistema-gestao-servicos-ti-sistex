class Recriartabelaremovidaporengano < ActiveRecord::Migration[5.2]
  def change
    remove_reference :vpns, :clientes, foreign_key:true
    add_reference :vpns, :pacotes_servico, foreign_key:true
    remove_column :requisicao_link_proprios, :validade_parecer, :date
    change_column :pacotes_servicos, :latencia, :float
    change_column :pacotes_servicos, :jitter, :float
    change_column :pacotes_servicos, :latencia, :float
    change_column :capacidades, :total_recurso, :float
    change_column :capacidades, :empregado, :float
  end
end
