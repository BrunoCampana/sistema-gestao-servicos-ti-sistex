class AlterarCpc < ActiveRecord::Migration[5.2]
  def change
    #drop_table :habilidade_adquiridas
    #drop_table :perfil_profissionals

    create_join_table :habilidades, :cargos do |t|
      t.index :habilidade_id
      t.index :usuario_id
    end
  end
end
