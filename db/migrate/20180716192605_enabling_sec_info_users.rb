class EnablingSecInfoUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :usuarios, :cliente, foreign_key:true
  end
end
