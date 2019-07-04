class Liberarvms < ActiveRecord::Migration[5.2]
  def change
    remove_reference :curso_ministrados, :instrutor, index:true, foreign_key:true
  end
end
