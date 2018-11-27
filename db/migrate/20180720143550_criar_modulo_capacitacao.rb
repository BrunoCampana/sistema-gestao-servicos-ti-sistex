class CriarModuloCapacitacao < ActiveRecord::Migration[5.2]
  def change
    add_column :habilidades, :descricao, :text
    #add_reference :perfil_profissionals, :usuario, index:true, foreign_key:true
    #add_reference :perfil_profissionals, :cargo, index:true, foreign_key:true
    #add_reference :habilidade_adquiridas, :perfil_profissional, foreign_key:true
    #add_reference :habilidade_adquiridas, :habilidade, foreign_key:true
  end
end
