class CreateFormacaoMils < ActiveRecord::Migration[5.2]
  def change
    create_table :formacao_mils do |t|
      t.string :nome
      t.timestamps
    end

    add_reference :usuarios, :formacao_mil, foreign_key:true
  end
end
