class Redoingstuff < ActiveRecord::Migration[5.2]
  def change
    add_column :curso_externos, :tipo_cpc, :integer
    add_column :curso_ministrados, :tipo_cpc, :integer
    add_column :usuarios, :associado, :integer
  end
end
