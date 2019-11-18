class CreateVpns < ActiveRecord::Migration[5.2]
  def change
    create_table :vpns do |t|
      t.string :dono_da_conta
      t.text :motivo_da_conta
      t.text :caracteristicas
      t.string :termo_responsabilidade
      t.timestamps
    end
    add_reference :vpns, :clientes, foreign_key:true
  end
end
