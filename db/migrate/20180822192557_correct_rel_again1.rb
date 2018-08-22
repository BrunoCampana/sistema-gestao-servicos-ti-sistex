class CorrectRelAgain1 < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :usuarios, :cargos
    remove_reference :cargos, :usuario
  end
end
