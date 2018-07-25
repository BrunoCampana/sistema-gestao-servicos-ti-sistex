class AddInventarioToCliente < ActiveRecord::Migration[5.2]
  def change
    add_column :clientes, :inventario, :string
  end
end
