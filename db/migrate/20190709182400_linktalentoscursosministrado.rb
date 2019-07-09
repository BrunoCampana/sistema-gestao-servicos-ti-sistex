class Linktalentoscursosministrado < ActiveRecord::Migration[5.2]
  def change
    create_join_table :curso_ministrados, :talentos do |t|
      t.index :curso_ministrado_id
      t.index :talento_id
    end
  end
end
