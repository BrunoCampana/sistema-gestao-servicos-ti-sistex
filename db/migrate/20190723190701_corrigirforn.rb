class Corrigirforn < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :fornecedors, :usuarios
    create_table :fisc_titulars_fornecedors do |t|
      t.references :usuario, index: true
      t.references :fornecedor, index: true
    end
    create_table :fisc_substs_fornecedors do |t|
      t.references :usuario, index: true
      t.references :fornecedor, index: true
    end
  end
end
