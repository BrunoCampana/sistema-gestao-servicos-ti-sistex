class AnsTi < ApplicationRecord
  belongs_to :cliente
  belongs_to :pacotes_servico
  has_and_belongs_to_many :servicos

  def name
    titulo
  end

  mount_uploader :contrato, ArquivoUploader
  has_paper_trail
end
