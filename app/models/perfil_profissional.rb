class PerfilProfissional < ApplicationRecord
  belongs_to :usuario
  belongs_to :cargo
  has_many :habilidade_adquiridas
  def name
    dono_perfil
  end
end
