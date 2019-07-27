class Melhorarpacotesv < ActiveRecord::Migration[5.2]
  def change
    remove_column :pacotes_servicos, :intranet, :integer
    remove_column :pacotes_servicos, :internet, :integer
    add_column :pacotes_servicos, :qtd_partilham, :integer
    add_column :pacotes_servicos, :obs_dados, :text
    add_column :pacotes_servicos, :ramal_ritex, :integer
    add_column :pacotes_servicos, :ramal_voip, :integer
    add_column :pacotes_servicos, :obs_tel, :text
    remove_column :pacotes_servicos, :contrato, :string
    add_reference :ans_tis, :pacotes_servico, index:true, foreign_key:true
  end
end
