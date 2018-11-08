class Parado < ApplicationRecord
  has_and_belongs_to_many :indisponibilidades
  def name
    nome
  end
end
