class Fornecedor < ApplicationRecord

  mount_uploader :contrato, ArquivoUploader
  has_and_belongs_to_many :servicos

  enum situacao: [:Em_assinatura, :Vigente, :Encerrado]

  has_and_belongs_to_many :fisc_titular, join_table: 'fornecedors_usuarios', class_name: 'Usuario'
  has_and_belongs_to_many :fisc_subst, join_table: 'fornecedors_usuarios', class_name: 'Usuario'

  def name
    nome_fornecedor
  end
end
