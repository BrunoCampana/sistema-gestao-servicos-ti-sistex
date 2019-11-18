class Removendocampoteste < ActiveRecord::Migration[5.2]
  def change
    remove_column :vots, :relatorios, :string
  end
end
