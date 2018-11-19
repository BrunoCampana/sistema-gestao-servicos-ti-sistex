class HabilidadeAdquirida < ApplicationRecord
  belongs_to :perfil_profissional
  belongs_to :habilidade
  enum nivel_habilidade: [:Básico, :Intermediário, :Avançado]
  def name
    curso_realizado
  end
end
