class AddForeignKeyAgain < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :usuarios, :cargos
  end
end
