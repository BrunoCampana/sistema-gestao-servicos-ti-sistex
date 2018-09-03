class Fornecedor < ApplicationRecord

  mount_uploader :contrato, ArquivoUploader
  has_and_belongs_to_many :servicos 
  def name
    nome_fornecedor
  end
end
