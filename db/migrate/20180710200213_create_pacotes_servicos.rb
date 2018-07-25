class CreatePacotesServicos < ActiveRecord::Migration[5.2]
  def change
    create_table :pacotes_servicos do |t|
      t.integer :intranet
      t.integer :internet
      t.string :velocidade_intranet
      t.integer :velocidade_internet
      t.integer :tipo_banda
      t.integer :meio_de_acesso
      t.integer :tipo_link
      t.string :latencia
      t.string :jitter
      t.string :disponibilidade
      t.integer :link_proprio

      t.timestamps
    end
  end
end
