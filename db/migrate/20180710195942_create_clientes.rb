class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :subordinacao
      t.string :uasg
      t.integer :possui_od
      t.text :missao_fim_om
      t.string :efetivo
      t.string :nome_ch_sec_info
      t.string :telefone_ctt_om
      t.string :celular_ctt
      t.string :email
      t.string :nome_adj_sec_info
      t.string :celular_ctt_adj
      t.string :email_adj
      t.text :anotacoes

      t.timestamps
    end
  end
end
