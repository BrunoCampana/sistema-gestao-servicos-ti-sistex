class Fornecedor < ApplicationRecord

  mount_uploader :contrato, ArquivoUploader
  has_and_belongs_to_many :servicos

  enum situacao: [:Em_assinatura, :Vigente, :Encerrado]

  has_and_belongs_to_many :fisc_titulars, join_table: 'fisc_titulars_fornecedors',
    class_name: 'Usuario'
  has_and_belongs_to_many :fisc_substs, join_table: 'fisc_substs_fornecedors',
    class_name: 'Usuario'

  def name
    nome_fornecedor
  end
end
