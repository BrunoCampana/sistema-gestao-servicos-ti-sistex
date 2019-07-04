class Software < ApplicationRecord
  def name
    nome
  end
  belongs_to :hardware
  enum tipo: [:SO, :Aplicativo, :Driver, :Sistema, :Plataforma]
end
