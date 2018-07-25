class ChangingRelations < ActiveRecord::Migration[5.2]
  def change
    remove_reference :requisicao_link_proprios, :usuario, index:true,
    foreign_key:true
    remove_reference :pacotes_servicos, :usuario, index:true,
    foreign_key:true
    add_reference :requisicao_link_proprios, :cliente, index:true,
    foreign_key:true
    add_reference :pacotes_servicos, :cliente, index:true,
    foreign_key:true
  end
end
