class Addansarq < ActiveRecord::Migration[5.2]
  def change
    add_column :ans_tis, :contrato, :string
  end
end
