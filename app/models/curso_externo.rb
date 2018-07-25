class CursoExterno < ApplicationRecord
  has_and_belongs_to_many :usuarios
  enum modalidade: [:Distância, :Presencial]
  mount_uploader :certificado_conclusao, ArquivoUploader
  enum curso_concluido: [:Não, :Sim]
  enum conclusao_checada: [:Pendente, :Checada]
  def name
    nome
  end
end
