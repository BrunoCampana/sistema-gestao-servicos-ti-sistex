class Addnomereq < ActiveRecord::Migration[5.2]
  def change
    add_column :requisicao_link_proprios, :descricao, :string
  end
end
