class FormacaoAcad < ApplicationRecord
  has_and_belongs_to_many :usuarios
  has_and_belongs_to_many :talentos

  def name
    nome
  end

  def quantos_possuem?
    usuarios.count
  end
end
