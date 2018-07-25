class CreateParados < ActiveRecord::Migration[5.2]
  def change
    create_table :parados do |t|
      t.string :nome
      t.timestamps
    end
    create_join_table :indisponibilidades, :parados do |t|
      t.index :indisponibilidade_id
      t.index :parado_id
    end
  end
end
