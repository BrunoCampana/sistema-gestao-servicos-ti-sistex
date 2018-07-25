class CorrectingAllForeignKeys < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :usuarios, :cargos
  end
end
