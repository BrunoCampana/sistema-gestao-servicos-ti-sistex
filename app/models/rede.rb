class Rede < ApplicationRecord
  has_many :sleqp
  def name
    nome
  end
  mount_uploader :diagrama, ArquivoUploader
  has_paper_trail
end
