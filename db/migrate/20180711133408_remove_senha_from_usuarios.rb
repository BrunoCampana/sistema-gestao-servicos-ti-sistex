class RemoveSenhaFromUsuarios < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :senha, :string
  end
end
