class Hierarq < ApplicationRecord
  has_many :usuarios
  has_many :talentos
  def name
    nome
  end
end
