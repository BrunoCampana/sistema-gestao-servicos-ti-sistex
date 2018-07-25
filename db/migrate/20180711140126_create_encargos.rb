class CreateEncargos < ActiveRecord::Migration[5.2]
  def change
    create_table :encargos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
