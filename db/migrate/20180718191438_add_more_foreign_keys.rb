class AddMoreForeignKeys < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :clientes, :requisicao_link_proprio
  end
end
