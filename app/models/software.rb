class Software < ApplicationRecord
  def name
    nome
  end
  belongs_to :hardware
  enum tipo: [:SO, :Aplicativo, :Driver, :Sistema, :Plataforma]
  has_paper_trail
end
