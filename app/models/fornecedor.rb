class Fornecedor < ApplicationRecord

  has_and_belongs_to_many :fisc_titulars, join_table: 'fisc_titulars_fornecedors',
    class_name: 'Usuario'
  has_and_belongs_to_many :fisc_substs, join_table: 'fisc_substs_fornecedors',
    class_name: 'Usuario'

  mount_uploader :contrato, ArquivoUploader
  has_and_belongs_to_many :servicos
  enum situacao: ["Em fase de contratação", "Vigente", "Encerrado"]

  def name
    descricao_recurso
  end
end
