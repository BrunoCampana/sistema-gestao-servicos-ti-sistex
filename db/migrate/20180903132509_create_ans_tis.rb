class CreateAnsTis < ActiveRecord::Migration[5.2]
  def change
    create_table :ans_tis do |t|
      t.timestamps
    end
    add_reference :ans_tis, :cliente, index:true, foreign_key:true
    add_reference :ans_tis, :servico, index:true, foreign_key:true
  end
end
