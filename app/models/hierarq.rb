class Hierarq < ApplicationRecord
  has_many :usuarios
  has_many :talentos
  def name
    nome
  end

  def qtd_mil
    usuarios.count
  end
  
end
