class Delassociado < ActiveRecord::Migration[5.2]
  def change
    remove_column :usuarios, :associado, :integer
  end
end
