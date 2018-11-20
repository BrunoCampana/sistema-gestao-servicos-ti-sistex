class AddRefsCpc < ActiveRecord::Migration[5.2]
  def change
    add_reference :cargos, :usuario, foreign_key:true
  end
end
