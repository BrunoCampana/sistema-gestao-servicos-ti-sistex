class DropingStuff < ActiveRecord::Migration[5.2]
  def change
    drop_join_table :usuarios, :talentos
  end
end
