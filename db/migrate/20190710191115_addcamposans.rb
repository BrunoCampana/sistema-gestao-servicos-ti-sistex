class Addcamposans < ActiveRecord::Migration[5.2]
  def change
    add_column :ans_tis, :titulo, :string
    add_column :ans_tis, :descricao, :text
    add_column :ans_tis, :vigencia, :string
  end
  remove_reference :ans_tis, :servico, index:true, foreign_key:true
  create_join_table :ans_tis, :servicos do |t|
    t.index :ans_ti_id
    t.index :servico_id
  end
end
