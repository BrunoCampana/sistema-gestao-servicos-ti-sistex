class Novasrelacoesdoapp < ActiveRecord::Migration[5.2]
  def change
    remove_column :acessos, :email, :string
    remove_column :acessos, :senha, :string
    add_column :usuarios, :cargos_exercidos, :text
    add_column :usuarios, :projetos_que_participou, :text
    remove_reference :usuarios, :formacao_mil, foreign_key:true
    remove_reference :usuarios, :formacao_acad, foreign_key:true
    create_join_table :formacao_acads, :usuarios do |t|
      t.index :formacao_acad_id
      t.index :usuario_id
    end
    create_join_table :formacao_mils, :usuarios do |t|
      t.index :formacao_mil_id
      t.index :usuario_id
    end
    add_column :vots, :titulo, :string
    add_column :usuarios, :situacao, :integer, default: 1
    remove_column :clientes, :possui_od, :integer
    add_column :clientes, :tipo, :integer, default: 0
    remove_reference :talentos, :formacao_mil, foreign_key:true
    remove_reference :talentos, :formacao_acad, foreign_key:true
    create_join_table :formacao_mils, :talentos do |t|
      t.index :formacao_mil_id
      t.index :talento_id
    end
    create_join_table :formacao_acads, :talentos do |t|
      t.index :formacao_acad_id
      t.index :talento_id
    end
    add_column :clientes, :possui_posto_radio, :boolean, default: false
    add_column :clientes, :descricao_posto_radio, :text
    add_column :clientes, :qtd_operadores_radio, :integer
  end
end
