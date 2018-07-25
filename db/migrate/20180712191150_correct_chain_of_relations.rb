class CorrectChainOfRelations < ActiveRecord::Migration[5.2]
  def change
    #add_reference :habilidades, :usuario
    #add_reference :encargos, :usuario
    #add_reference :cargo, usuario

    #add_column :usuarios, :id, :primary_key
    #add_column :indisponibilidades, :id, :primary_key
    #add_column :motivos, :id, :primary_key
    #add_column :encargos, :id, :primary_key
    #add_column :habilidades, :id, :primary_key
    #add_column :clientes, :id, :primary_key
    #add_column :vots, :id, :primary_key
    #add_column :cidades, :id, :primary_key

    add_reference :cargos, :usuario, index:true, foreign_key:true
    add_reference :requisicao_link_proprios, :usuario, index:true,
    foreign_key:true
    add_reference :pacotes_servicos, :usuario, index:true,
    foreign_key:true

    add_reference :clientes, :cidade, foreign_key:true
    add_reference :vots, :cliente, foreign_key:true

    create_join_table :indisponibilidades, :motivos do |t|
      t.index :motivo_id
      t.index :indisponibilidade_id
    end

    create_join_table :encargos, :usuarios do |t|
      t.index :encargo_id
      t.index :usuario_id
    end

    create_join_table :habilidades, :usuarios do |t|
      t.index :habilidade_id
      t.index :usuario_id
    end

    create_join_table :usuarios, :vots do |t|
      t.index :usuario_id
      t.index :vot_id
    end

  end
end
