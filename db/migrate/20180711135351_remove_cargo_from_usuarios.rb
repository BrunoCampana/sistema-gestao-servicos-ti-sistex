class RemoveCargoFromUsuarios < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :cargo, :integer
  end
end
