class Addcamposcliente < ActiveRecord::Migration[5.2]
  def change
    add_column :clientes, :nome_ch_sec_ti, :string
    add_column :clientes, :nome_cmt_om, :string
    add_column :clientes, :cel_cmt_om, :string
  end
end
