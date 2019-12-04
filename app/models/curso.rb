class Curso < ApplicationRecord
  has_and_belongs_to_many :usuarios
  def name
    nome
  end

  def quantos_fizeram?
    usuarios.count
  end
  
end
