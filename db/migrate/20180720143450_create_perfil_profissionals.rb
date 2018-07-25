class CreatePerfilProfissionals < ActiveRecord::Migration[5.2]
  def change
    create_table :perfil_profissionals do |t|

      t.timestamps
    end
  end
end
