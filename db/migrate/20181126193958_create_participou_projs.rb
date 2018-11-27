class CreateParticipouProjs < ActiveRecord::Migration[5.2]
  def change
    create_table :participou_projs do |t|
      t.string :nome

      t.timestamps
    end

    add_reference :participou_projs, :usuario, foreign_key:true
  end
end
