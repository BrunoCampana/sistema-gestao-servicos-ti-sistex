class CorrigindoUsuario < ActiveRecord::Migration[5.2]
  def change
    remove_column :clientes, :nome_ch_sec_info, :string
    remove_column :clientes, :celular_ctt, :string
    remove_column :clientes, :nome_adj_sec_info, :string
    remove_column :clientes, :celular_ctt_adj, :string
    remove_column :clientes, :email_adj, :string
  end
end
