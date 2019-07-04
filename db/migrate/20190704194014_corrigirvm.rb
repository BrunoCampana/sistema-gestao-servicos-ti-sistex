class Corrigirvm < ActiveRecord::Migration[5.2]
  def change
    remove_column :vms, :hardware_id, :integer
  end
end
