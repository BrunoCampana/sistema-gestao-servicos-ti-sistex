class Adcamposforn < ActiveRecord::Migration[5.2]
  def change
    add_column :fornecedors, :preposto, :string
    add_column :fornecedors, :contato, :string
  end
end
