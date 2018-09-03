class CursoExterno < ApplicationRecord
  #Nome certo: atividade de capacitação externa
  has_and_belongs_to_many :usuarios
  enum modalidade: [:Distância, :Presencial]
  mount_uploader :certificado_conclusao, ArquivoUploader
  enum curso_concluido: [:Não, :Sim]
  enum conclusao_checada: [:Pendente, :Checada]
  enum tipo_cpc: [:Estágio_Interno, :MOOC, :Instrução_de_Quadros, :ICN, :EECN, :Mestrado,
  :Doutorado, :Especialização, :PCENA, :PVANA, :Visitação, :Conferência, :Congresso]
  def name
    nome
  end
end
