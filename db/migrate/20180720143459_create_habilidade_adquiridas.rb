class CreateHabilidadeAdquiridas < ActiveRecord::Migration[5.2]
  def change
    create_table :habilidade_adquiridas do |t|
      t.integer :nivel_habilidade
      t.string :curso_realizado
      t.date :data_adquiriu_habilidade
      t.text :descricao_habilidade

      t.timestamps
    end
  end
end
