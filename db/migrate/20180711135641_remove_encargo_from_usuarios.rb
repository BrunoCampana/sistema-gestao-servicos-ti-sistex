class RemoveEncargoFromUsuarios < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :encargo, :integer
  end
end
