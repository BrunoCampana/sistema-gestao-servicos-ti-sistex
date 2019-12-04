class CursoExterno < ApplicationRecord
  #Nome certo: atividade de capacitação externa
  has_and_belongs_to_many :usuarios
  enum modalidade: [:Distância, :Presencial]
  mount_uploader :certificado_conclusao, ArquivoUploader
  enum curso_concluido: [:Não, :Sim]
  enum conclusao_checada: [:Pendente, :Checada]
  enum tipo_cpc: ["Estágio interno", "Curso Online Aberto", "Instrução de Quadros", "ICN", "EECN", "Mestrado",
  "Doutorado", "Especialização", "PCENA", "PVANA", "Visitação", "Conferência", "Congresso"]

  def name
    nome
  end

  def quantos_fizeram?
    usuarios.count
  end
end
