class Adcamposlinkproprio < ActiveRecord::Migration[5.2]
  def change
    add_column :requisicao_link_proprios, :origem_recurso, :string
    add_column :requisicao_link_proprios, :inicio_parecer, :date
    add_column :requisicao_link_proprios, :validade_parecer, :date
  end
end
