class CreateHierarqs < ActiveRecord::Migration[5.2]
  def change
    create_table :hierarqs do |t|
      t.string :nome
      t.timestamps
    end
    add_reference :usuarios, :hierarq, foreign_key:true
  end
end
