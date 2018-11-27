class CreateCargoExercidos < ActiveRecord::Migration[5.2]
  def change
    create_table :cargo_exercidos do |t|
      t.string :nome

      t.timestamps
    end

    add_reference :cargo_exercidos, :usuario, foreign_key:true
  end
end
