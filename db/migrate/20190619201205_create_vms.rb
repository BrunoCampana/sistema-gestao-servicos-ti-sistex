class CreateVms < ActiveRecord::Migration[5.2]
  def change
    create_table :vms do |t|
      t.string :nome
      t.string :os
      t.string :hwvirtual
      t.text :descricao
      t.text :servicos
      t.string :ip
      t.string :dono

      t.timestamps
    end
    add_reference :vms, :hardware, foreign_key:true
  end
end
