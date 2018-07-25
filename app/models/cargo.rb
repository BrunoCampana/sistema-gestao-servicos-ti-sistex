class Cargo < ApplicationRecord
  belongs_to :usuario
  has_one :perfil_profissional
  def name
    nome
  end
end
