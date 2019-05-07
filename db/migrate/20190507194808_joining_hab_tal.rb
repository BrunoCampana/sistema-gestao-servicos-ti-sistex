class JoiningHabTal < ActiveRecord::Migration[5.2]
  def change
    create_join_table :habilidades, :talentos do |t|
      t.index :habilidade_id
      t.index :talento_id
    end
  end
end
