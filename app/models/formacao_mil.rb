class FormacaoMil < ApplicationRecord
  has_many :usuarios
  def name
    nome
  end
end
