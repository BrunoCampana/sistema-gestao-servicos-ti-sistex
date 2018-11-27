class CreateFormacaoAcads < ActiveRecord::Migration[5.2]
  def change
    create_table :formacao_acads do |t|
      t.string :nome

      t.timestamps
    end

    add_reference :usuarios, :formacao_acad, foreign_key:true
  end
end
