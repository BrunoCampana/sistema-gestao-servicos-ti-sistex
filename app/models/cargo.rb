class Cargo < ApplicationRecord

  has_and_belongs_to_many :usuarios
  has_and_belongs_to_many :habilidades

  def name
    nome
  end
end
