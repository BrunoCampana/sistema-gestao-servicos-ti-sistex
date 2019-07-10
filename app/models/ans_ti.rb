class AnsTi < ApplicationRecord
  belongs_to :cliente
  has_and_belongs_to_many :servicos

  def name
    titulo
  end

  mount_uploader :contrato, ArquivoUploader
end
