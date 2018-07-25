class Fornecedor < ApplicationRecord

  mount_uploader :contrato, ArquivoUploader

  def name
    nome_fornecedor
  end
end
